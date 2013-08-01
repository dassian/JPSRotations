--[[
	 JPS - WoW Protected Lua DPS AddOn
	Copyright (C) 2011 Jp Ganis

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program. If not, see <http://www.gnu.org/licenses/>.
]]--

-- JPS Rotations
jpsRotations = {}
jpsRotations.inizialized = false

function jpsRotations.inizialize()
	jpsRotations.loadRotations()
	jpsRotations.eventFrame:UnregisterEvent("ADDON_LOADED")
end

function jpsRotations.eventHandler(self, event, arg1)
	if (event == "ADDON_LOADED" ) then
		if not jpsRotations.inizialized then
			if IsAddOnLoaded("JPS") == 1 then
				jpsRotations.inizialize()
			end
			if arg1 == "JPS" then
				jpsRotations.inizialize()
			end
		end
	end
end

local jpsRotations.eventFrame = CreateFrame("Frame")
jpsRotations.eventFrame:RegisterEvent("ADDON_LOADED")
jpsRotations.eventFrame:SetScript("OnEvent", jpsRotations.eventHandler)