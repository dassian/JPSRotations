==============================================================================
= JPS Rotations =
==============================================================================

This addon allows you to load custom rotations into JPS without becoming overwritten with the next JPS update.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

Copyright (C) 2011 James Ganis

==============================================================================
= USAGE                                                                      =
==============================================================================

Your rotations should be saved inside Rotations/rotations.lua.
Inside the function jpsRotations.loadRotations() you can register new rotations defined somewhere inside this file.

avaible Strings for classes/specs (Case sensitive!) 

	"WARRIOR" = "ARMS","FURY","PROTECTION"
	"PALADIN" = "HOLY","PROTECTION","RETRIBUTION"
	"HUNTER" = "BEASTMASTERY","MARKSMANSHIP","SURVIVAL"
	"ROGUE" = "ASSASSINATION","COMBAT","SUBTLETY"
	"PRIEST" = "DISCIPLINE","HOLY","SHADOW"
	"DEATHKKNIGHT" = "BLOOD","FROST","UNHOLY"
	"SHAMAN" = "ELEMENTAL","ENHANCEMENT","RESTORATION"
	"MAGE" = "ARCANE","FIRE","FROST"
	"WARLOCK" = "AFFLICTION","DEMONOLOGY","DESTRUCTION"
	"MONK" = "BREWMASTER","MISTWEAVER","WINDWALKER"
	"DRUID" = "BALANCE","FERAL","GUARDIAN","RESTORATION"


Usage example:

	function demoDKRotation()
		local spellTable = {
			....
			"obliterate", "onCD",
			....
		}
		
		spell,target = parseSpellTable(spellTable)
		return spell,target
	end
	
	function jpsRotations.loadRotations() {
		-- REGISTER YOUR CUSTOM ROTATIONS HERE

		jps.registerRotation("DEATHKNIGHT","FROST", demoDKRotation() ,"DEMO DK ROTATION", true, false)
	}


jpsRotations.loadRotations
------------------------
loadRotations() Registers your custom rotations. If you register more than one Rotation per Class/Spec you will get a Drop-Down Menu where you can
choose your Rotation. Rotations should be only registered inside this function, because we have to wait until JPS is loaded.


==============================================================================
= TO-DO / KNOWN BUGS                                                         =
==============================================================================

* NOT TESTED YET ! BETA

