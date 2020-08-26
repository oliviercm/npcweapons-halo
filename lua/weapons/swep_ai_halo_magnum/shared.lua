DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO MAGNUM
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
SWEP.Primary.Sound				= {"swep_ai_halo_magnum_fire_1", "swep_ai_halo_magnum_fire_2", "swep_ai_halo_magnum_fire_3", "swep_ai_halo_magnum_fire_4"}

SWEP.ClientModel				= {
	model						= "models/magnum.mdl",
	pos							= Vector(5, 1.8, -0.6),
	angle						= Angle(180, -90, 5),
	size						= Vector(1.1, 1.1, 1.1),
	color						= Color(255, 255, 255, 255),
	skin						= 0,
	bodygroup					= {},
}