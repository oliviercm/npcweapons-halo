DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO ROCKET LAUNCHER
--]]

SWEP.WorldModel					= "models/weapons/w_snip_awp.mdl"
SWEP.HoldType					= "rpg"

SWEP.MuzzleEffect    			= "MuzzleEffect"
SWEP.EnableShellEffect			= false
SWEP.TracerEffect				= "Tracer"
SWEP.ReloadSounds				= {}

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_MED
SWEP.Primary.DamageMin			= 3
SWEP.Primary.DamageMax			= 5
SWEP.Primary.MinDropoffDistance	= NPC_WEAPONS_MIN_DROPOFF_DISTANCE_SMG
SWEP.Primary.MaxDropoffDistance	= NPC_WEAPONS_MAX_DROPOFF_DISTANCE_SMG
SWEP.Primary.Force				= 5
SWEP.Primary.Spread				= 0.060
SWEP.Primary.SpreadMoveMult		= NPC_WEAPONS_SPREAD_MOVE_MULT_NONE
SWEP.Primary.BurstMinShots		= 3
SWEP.Primary.BurstMaxShots		= 5
SWEP.Primary.BurstMinDelay		= 0
SWEP.Primary.BurstMaxDelay		= 0
SWEP.Primary.FireDelay			= 0.07
SWEP.Primary.NumBullets			= 1
SWEP.Primary.ClipSize			= 60
SWEP.Primary.DefaultClip		= 60
SWEP.Primary.AimDelayMin		= NPC_WEAPONS_MIN_AIM_DELAY_LOW
SWEP.Primary.AimDelayMax		= NPC_WEAPONS_MAX_AIM_DELAY_LOW
SWEP.Primary.Sound				= "swep_ai_halo_smg_fire_1"

SWEP.ClientModel				= {
	model						= "models/rocket.mdl",
	pos							= Vector(3, 1, -1),
	angle						= Angle(-101.25, 0, 90),
	size						= Vector(1.2, 1.2, 1.2),
	color						= Color(255, 255, 255, 255),
	skin						= 0,
	bodygroup					= {},
}