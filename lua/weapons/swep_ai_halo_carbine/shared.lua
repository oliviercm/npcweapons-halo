DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO CARBINE
--]]

SWEP.WorldModel					= "models/weapons/w_rif_m4a1.mdl"
SWEP.HoldType					= "ar2"

SWEP.MuzzleEffect    			= "Cov_Carbine_Muzzle"
SWEP.EnableTracerEffect    		= false
SWEP.EnableShellEffect    		= false
SWEP.TracerEffect				= "Tracer"
SWEP.ReloadSounds				= {{0.2, "swep_ai_halo_carbine_reload"}}
SWEP.ExtraShootEffects			= {
	{ EffectName = "NPC_ConvCarb_Beam", Scale = 0.2 },
	{ EffectName = "NPC_ConvCarb_Impact", Scale = 0.2 },
}

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_MED
SWEP.Primary.DamageMin			= 7
SWEP.Primary.DamageMax			= 9
SWEP.Primary.MinDropoffDistance	= NPC_WEAPONS_MIN_DROPOFF_DISTANCE_RIFLE
SWEP.Primary.MaxDropoffDistance	= NPC_WEAPONS_MAX_DROPOFF_DISTANCE_RIFLE
SWEP.Primary.Force				= 8
SWEP.Primary.Spread				= 0.030
SWEP.Primary.SpreadMoveMult		= NPC_WEAPONS_SPREAD_MOVE_MULT_MED
SWEP.Primary.BurstMinShots		= 1
SWEP.Primary.BurstMaxShots		= 1
SWEP.Primary.BurstMinDelay		= 0
SWEP.Primary.BurstMaxDelay		= 0.02
SWEP.Primary.FireDelay			= 0.23
SWEP.Primary.NumBullets			= 1
SWEP.Primary.ClipSize			= 18
SWEP.Primary.DefaultClip		= 18
SWEP.Primary.AimDelayMin		= NPC_WEAPONS_MIN_AIM_DELAY_MED
SWEP.Primary.AimDelayMax		= NPC_WEAPONS_MAX_AIM_DELAY_MED
SWEP.Primary.Sound				= {"swep_ai_halo_carbine_fire_1", "swep_ai_halo_carbine_fire_2","swep_ai_halo_carbine_fire_3"}

SWEP.ClientModel				= {
	model						= "models/weapons/npc_haloweapons/carbine.mdl",
	pos							= Vector(9.545, 1, -4.6),
	angle						= Angle(0, 90, -168.75),
	size						= Vector(1, 1, 1),
	color						= Color(255, 255, 255, 255),
	skin						= 0,
	bodygroup					= {},
}