-- Constants
local SPELL_ID=456024;
local SOUND_ID=32585;
local ALERT_INTERVAL=600; -- Trigger at 10 minutes remaining (600 seconds)
 
-- Create a frame for handling events
local EventFrame=CreateFrame("Frame")
 
-- Create function prototypes and force a lexical scope
local CancelAlarm,SetAlarm; do
    local ActiveTimerObject; -- Stores the currently running timer object so we have the option to cancel it if necessary
 
--  Timer triggers this function
    local function PlayAlarm()
        ActiveTimerObject=nil;
        PlaySound(SOUND_ID);
    end
 
--  Actual function definitions (These get assigned to the local function prototypes above)
    function CancelAlarm()
        if ActiveTimerObject then
            ActiveTimerObject:Cancel(); -- Cancel current timer if any
            ActiveTimerObject=nil;
        end
    end
 
    function SetAlarm(alarmtime)
        CancelAlarm(); -- Cancel current timer if any
 
        local remain=alarmtime-GetTime();
        if remain>0 then ActiveTimerObject=C_Timer.NewTimer(remain,PlayAlarm); end -- Create and store new timer object
    end
end
 
-- Event handler
local TrackedAuraID;
EventFrame:SetScript("OnEvent",function(self,event,unit,updateinfo)
    if event=="UNIT_AURA" and UnitIsUnit(unit,"player") then -- Sanity check (This is our only event and we filtered player at event registration)
--      Handle new auras
        if updateinfo.addedAuras then
            for _,aurainfo in ipairs(updateinfo.addedAuras) do
                if aurainfo.spellId==SPELL_ID then
                    TrackedAuraID=aurainfo.auraInstanceID;
                    SetAlarm(aurainfo.expirationTime-ALERT_INTERVAL);
                    break;
                end
            end
        end
 
--      Handle timer updates
        if updateinfo.updatedAuraInstanceIDs and tContains(updateinfo.updatedAuraInstanceIDs,TrackedAuraID) then
            local aurainfo=C_UnitAuras.GetAuraDataByAuraInstanceID(unit,TrackedAuraID);
            if aurainfo and aurainfo.spellId==SPELL_ID then -- Sanity check (There's no reason for this aura to not exist or not be our tracked spell)
                SetAlarm(aurainfo.expirationTime-ALERT_INTERVAL);
            end
        end
 
--      Handle early aura removal
        if updateinfo.removedAuraInstanceIDs and tContains(updateinfo.removedAuraInstanceIDs,TrackedAuraID) then
            TrackedAuraID=nil;
            CancelAlarm();
        end
    end
end)
 
-- Register the UNIT_AURA event to track buffs
EventFrame:RegisterUnitEvent("UNIT_AURA","player");