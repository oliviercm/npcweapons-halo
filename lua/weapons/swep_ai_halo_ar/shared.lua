DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO ASSAULT RIFLE
--]]

SWEP.WorldModel					= "models/weapons/npc_haloweapons/ma37.mdl"
SWEP.HoldType					= "ar2"

SWEP.MuzzleEffect    			= "MuzzleEffect"
SWEP.ShellEffect				= "RifleShellEject"
SWEP.TracerEffect				= "Tracer"
SWEP.ReloadSounds				= {}

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_MED
SWEP.Primary.DamageMin			= 5
SWEP.Primary.DamageMax			= 7
SWEP.Primary.MinDropoffDistance	= NPC_WEAPONS_MIN_DROPOFF_DISTANCE_SHOTGUN
SWEP.Primary.MaxDropoffDistance	= NPC_WEAPONS_MAX_DROPOFF_DISTANCE_SHOTGUN
SWEP.Primary.Force				= 7
SWEP.Primary.Spread				= 0.120
SWEP.Primary.SpreadMoveMult		= NPC_WEAPONS_SPREAD_MOVE_MULT_NONE
SWEP.Primary.BurstMinShots		= 1
SWEP.Primary.BurstMaxShots		= 2
SWEP.Primary.BurstMinDelay		= 0
SWEP.Primary.BurstMaxDelay		= 0
SWEP.Primary.FireDelay			= 0.3
SWEP.Primary.NumBullets			= 7
SWEP.Primary.ClipSize			= 15
SWEP.Primary.DefaultClip		= 15
SWEP.Primary.AimDelayMin		= NPC_WEAPONS_MIN_AIM_DELAY_LOW
SWEP.Primary.AimDelayMax		= NPC_WEAPONS_MAX_AIM_DELAY_LOW
SWEP.Primary.Sound				= "swep_ai_striker_fire"