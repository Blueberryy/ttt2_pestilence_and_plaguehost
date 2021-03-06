if SERVER then
	AddCSLuaFile()

	resource.AddFile('materials/vgui/ttt/dynamic/roles/icon_pest.vmt')
end

--Initializing Pest´s Team
roles.InitCustomTeam(ROLE.name, {
	icon = "vgui/ttt/dynamic/roles/icon_pest",
	color = Color(000, 000, 000, 255)
})

-- General settings
function ROLE:PreInitialize()
	self.color = Color(000, 000, 000, 255) -- rolecolour
	
	self.abbr = 'pest' -- Abbreviation
	self.unknownTeam = false -- No teamchat
	self.defaultTeam = TEAM_PESTILENCE -- traitor team
	self.preventFindCredits = true -- Is able to find/get credits for his perfomance
	self.preventKillCredits = true -- Is able to find/get credits for his perfomance
	self.preventTraitorAloneCredits = true -- Is able to find/get credits for his perfomance
	self.preventWin = false -- wins with traitor team
	self.scoreKillsMultiplier       =  8
    self.scoreTeamKillsMultiplier   = -16
    self.notSelectable			    = false
	
	-- ULX convars

	self.conVarData = {
		pct = 0.17, -- necessary: percentage of getting this role selected (per player)
		maximum = 1, -- maximum amount of roles in a round
		minPlayers = 7, -- minimum amount of players until this role is able to get selected
		credits = 2, -- the starting credits of a specific role
		shopFallback = SHOP_DISABLED, -- Uses traitor-shop
		togglable = true, -- option to toggle a role for a client if possible (F1 menu)
		random = 50
	}
end