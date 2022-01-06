local eventframe = CreateFrame("FRAME")
eventframe:SetPoint("CENTER")
eventframe:SetScript("OnEvent", function(self, event, ...)
      local timestamp, type, sourceGUID, sourceName, sourceFlags, destGUID, destName, destFlags = select(1, ...)
      
      if event == "COMBAT_LOG_EVENT_UNFILTERED" then
         if type=="SPELL_CAST_SUCCESS" and destGUID == UnitGUID("player")  then
            
            local spellId, spellName, spellSchool = select(9, ...)
            
            if (spellId==44572) or (spellId==2094) or (spellId==47860) or (spellId==1833)
            then 
               RunMacro("Vanish")
            end
         end
      end
end)
eventframe:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
