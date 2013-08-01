-- avaible specs (Case sensitive!) 
-- "WARRIOR" = "ARMS","FURY","PROTECTION"
-- "PALADIN" = "HOLY","PROTECTION","RETRIBUTION"
-- "HUNTER" = "BEASTMASTERY","MARKSMANSHIP","SURVIVAL"
-- "ROGUE" = "ASSASSINATION","COMBAT","SUBTLETY"
-- "PRIEST" = "DISCIPLINE","HOLY","SHADOW"
-- "DEATHKKNIGHT" = "BLOOD","FROST","UNHOLY"
-- "SHAMAN" = "ELEMENTAL","ENHANCEMENT","RESTORATION"
-- "MAGE" = "ARCANE","FIRE","FROST"
-- "WARLOCK" = "AFFLICTION","DEMONOLOGY","DESTRUCTION"
-- "MONK" = "BREWMASTER","MISTWEAVER","WINDWALKER"
-- "DRUID" = "BALANCE","FERAL","GUARDIAN","RESTORATION"

-- jps.registerRotation("CLASS","SPECC",function,tooltip, pve, pvp)

--[[
function demoDKRotation()
	local spellTable = {
		....
		"obliterate", "onCD",
		....
	}
	
	spell,target = parseSpellTable(spellTable)
	return spell,target
end

jps.registerRotation("DEATHKNIGHT","FROST", demoDKRotation() ,"DEMO DK ROTATION", true, false) ]]--


--[[[
@function jpsRotations.loadRotations
@description 
Registers the given Rotation. If you register more than one Rotation per Class/Spec you will get a Drop-Down Menu where you can
choose your Rotation. Rotations should be only registered inside this function, because we have to wait until JPS is loaded.

]]--




function jpsRotations.loadRotations() {
-- REGISTER YOUR CUSTOM ROTATIONS HERE
}
