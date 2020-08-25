DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO NEEDLE RIFLE
--]]

SWEP.WorldModel					= "models/weapons/w_rif_m4a1.mdl"
SWEP.HoldType					= "ar2"

SWEP.MuzzleEffect    			= "NPC_Needler_Muzzle_Effect"
SWEP.EnableShellEffect			= false
SWEP.TracerEffect				= "Needle_Rifle_Tracer"
SWEP.ReloadSounds				= {}

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_MED
SWEP.Primary.DamageMin			= 7
SWEP.Primary.DamageMax			= 9
SWEP.Primary.MinDropoffDistance	= NPC_WEAPONS_MIN_DROPOFF_DISTANCE_RIFLE
SWEP.Primary.MaxDropoffDistance	= NPC_WEAPONS_MAX_DROPOFF_DISTANCE_RIFLE
SWEP.Primary.Force				= 9
SWEP.Primary.Spread				= 0.020
SWEP.Primary.SpreadMoveMult		= NPC_WEAPONS_SPREAD_MOVE_MULT_MED
SWEP.Primary.BurstMinShots		= 1
SWEP.Primary.BurstMaxShots		= 1
SWEP.Primary.BurstMinDelay		= 0
SWEP.Primary.BurstMaxDelay		= 0.04
SWEP.Primary.FireDelay			= 0.25
SWEP.Primary.NumBullets			= 1
SWEP.Primary.ClipSize			= 21
SWEP.Primary.DefaultClip		= 21
SWEP.Primary.AimDelayMin		= NPC_WEAPONS_MIN_AIM_DELAY_MED
SWEP.Primary.AimDelayMax		= NPC_WEAPONS_MAX_AIM_DELAY_MED
SWEP.Primary.Sound				= {"swep_ai_halo_needle_rifle_fire_1", "swep_ai_halo_needle_rifle_fire_2", "swep_ai_halo_needle_rifle_fire_3"}

SWEP.ClientModel				= {
	model						= "models/weapons/npc_haloweapons/needlerrifle.mdl",
	pos							= Vector(-1, 1.363, 2.5),
	angle						= Angle(0, 90, -165),
	size						= Vector(1, 1, 1),
	color						= Color(255, 255, 255, 255),
	skin						= 0,
	bodygroup					= {},
}