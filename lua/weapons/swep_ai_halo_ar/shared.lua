DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO ASSAULT RIFLE
--]]

SWEP.WorldModel					= "models/weapons/w_rif_m4a1.mdl"
SWEP.HoldType					= "ar2"

SWEP.MuzzleEffect    			= "MuzzleEffect"
SWEP.ShellEffect				= "RifleShellEject"
SWEP.TracerEffect				= "Tracer"
SWEP.ReloadSounds				= {}

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_MED
SWEP.Primary.DamageMin			= 10
SWEP.Primary.DamageMax			= 12
SWEP.Primary.MinDropoffDistance	= NPC_WEAPONS_MIN_DROPOFF_DISTANCE_RIFLE
SWEP.Primary.MaxDropoffDistance	= NPC_WEAPONS_MAX_DROPOFF_DISTANCE_RIFLE
SWEP.Primary.Force				= 11
SWEP.Primary.Spread				= 0.038
SWEP.Primary.SpreadMoveMult		= NPC_WEAPONS_SPREAD_MOVE_MULT_MED
SWEP.Primary.BurstMinShots		= 3
SWEP.Primary.BurstMaxShots		= 5
SWEP.Primary.BurstMinDelay		= 0
SWEP.Primary.BurstMaxDelay		= 0
SWEP.Primary.FireDelay			= 0.1
SWEP.Primary.NumBullets			= 1
SWEP.Primary.ClipSize			= 32
SWEP.Primary.DefaultClip		= 32
SWEP.Primary.AimDelayMin		= NPC_WEAPONS_MIN_AIM_DELAY_MED
SWEP.Primary.AimDelayMax		= NPC_WEAPONS_MAX_AIM_DELAY_MED
SWEP.Primary.Sound				= {"swep_ai_halo_ar_fire_1", "swep_ai_halo_ar_fire_2", "swep_ai_halo_ar_fire_3"}

SWEP.ClientModel				= {
	model						= "models/ar.mdl",
	pos							= Vector(9.545, 1, -3.5),
	angle						= Angle(0, 90, -168.75),
	size						= Vector(1, 1, 1),
	color						= Color(255, 255, 255, 255),
	skin						= 0,
	bodygroup					= {},
}