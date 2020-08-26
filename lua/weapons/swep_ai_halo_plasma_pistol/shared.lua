DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO PLASMA PISTOL
--]]

SWEP.WorldModel					= "models/weapons/w_pistol.mdl"
SWEP.HoldType					= "pistol"

SWEP.MuzzleEffect    			= "MuzzleEffect"
SWEP.ShellEffect				= "PistolShellEject"
SWEP.TracerEffect				= "Tracer"
SWEP.ReloadSounds				= {}

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_MED
SWEP.Primary.DamageMin			= 10
SWEP.Primary.DamageMax			= 12
SWEP.Primary.MinDropoffDistance	= NPC_WEAPONS_MIN_DROPOFF_DISTANCE_PISTOL
SWEP.Primary.MaxDropoffDistance	= NPC_WEAPONS_MAX_DROPOFF_DISTANCE_PISTOL
SWEP.Primary.Force				= 11
SWEP.Primary.Spread				= 0.016
SWEP.Primary.SpreadMoveMult		= NPC_WEAPONS_SPREAD_MOVE_MULT_LOW
SWEP.Primary.BurstMinShots		= 1
SWEP.Primary.BurstMaxShots		= 1
SWEP.Primary.BurstMinDelay		= 0
SWEP.Primary.BurstMaxDelay		= 0.2
SWEP.Primary.FireDelay			= 0.5
SWEP.Primary.NumBullets			= 1
SWEP.Primary.ClipSize			= 8
SWEP.Primary.DefaultClip		= 8
SWEP.Primary.AimDelayMin		= NPC_WEAPONS_MIN_AIM_DELAY_LOW
SWEP.Primary.AimDelayMax		= NPC_WEAPONS_MAX_AIM_DELAY_LOW
SWEP.Primary.Sound				= {"swep_ai_halo_dmr_fire_1", "swep_ai_halo_dmr_fire_2", "swep_ai_halo_dmr_fire_3"}

SWEP.ClientModel				= {
	model						= "models/ppis.mdl",
	pos							= Vector(3, 1, 0),
	angle						= Angle(270, 90, 180),
	size						= Vector(1, 1, 1),
	color						= Color(255, 255, 255, 255),
	skin						= 0,
	bodygroup					= {},
}