if not file.Exists("weapons/swep_ai_base/shared.lua", "LUA") then

	if CLIENT then

		timer.Simple(0, function()

			notification.AddLegacy("NPC Weapons Base is not installed.", NOTIFY_ERROR, 10)
			surface.PlaySound("buttons/button10.wav")

			chat.AddText(
				Color(255, 32, 32),
				"ERROR: ",
				Color(255, 255, 255),
				"NPC Weapons Base not detected. Visit ",
				Color(173, 216, 230),
				"https://steamcommunity.com/sharedfiles/filedetails/?id=632126535 ",
				Color(255, 255, 255),
				"to download NPC Weapons Base."
			)

		end)

	end

end