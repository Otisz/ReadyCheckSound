-- Plays the ready check sound on the Master channel when the SFX channel is
-- disabled (toggle off or volume at 0), since Blizzard's own sound plays on SFX.

local function IsSFXDisabled()
	return GetCVar("Sound_EnableSFX") == "0" or (tonumber(GetCVar("Sound_SFXVolume")) or 0) <= 0
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("READY_CHECK")
frame:SetScript("OnEvent", function(_, _, initiator)
	if initiator and UnitIsUnit("player", initiator) then
		return
	end
	if IsSFXDisabled() then
		PlaySound(SOUNDKIT.READY_CHECK, "Master")
	end
end)
