DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO SPIKER
--]]

SWEP.WorldModel					= "models/weapons/w_rif_famas.mdl"
SWEP.HoldType					= "smg"

SWEP.MuzzleEffect    			= "AirboatMuzzleFlash"
SWEP.EnableShellEffect			= false
SWEP.TracerEffect				= "Tracer"
SWEP.ReloadSounds				= {{0.4, "swep_ai_halo_spiker_reload"}}

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_MED

SWEP.Primary.Type               = "projectile"
SWEP.Primary.DamageType         = DMG_GENERIC
SWEP.Primary.DamageMin			= 8
SWEP.Primary.DamageMax			= 10
SWEP.Primary.MinDropoffDistance	= NPC_WEAPONS_MIN_DROPOFF_DISTANCE_SMG
SWEP.Primary.MaxDropoffDistance	= NPC_WEAPONS_MAX_DROPOFF_DISTANCE_SMG
SWEP.Primary.Force				= 5
SWEP.Primary.Spread				= 2
SWEP.Primary.SpreadMoveMult		= NPC_WEAPONS_SPREAD_MOVE_MULT_NONE
SWEP.Primary.BurstMinShots		= 3
SWEP.Primary.BurstMaxShots		= 5
SWEP.Primary.BurstMinDelay		= 0
SWEP.Primary.BurstMaxDelay		= 0
SWEP.Primary.FireDelay			= 0.12
SWEP.Primary.NumBullets			= 1
SWEP.Primary.ClipSize			= 40
SWEP.Primary.DefaultClip		= 40
SWEP.Primary.AimDelayMin		= NPC_WEAPONS_MIN_AIM_DELAY_LOW
SWEP.Primary.AimDelayMax		= NPC_WEAPONS_MAX_AIM_DELAY_LOW
SWEP.Primary.Sound				= {"swep_ai_halo_spiker_fire_1", "swep_ai_halo_spiker_fire_2", "swep_ai_halo_spiker_fire_3", "swep_ai_halo_spiker_fire_4", "swep_ai_halo_spiker_fire_5", "swep_ai_halo_spiker_fire_6"}

SWEP.AimForBody     			= true

SWEP.ProjectileModel            = "models/crossbow_bolt.mdl"
SWEP.ProjectileModelScale       = 0.75
SWEP.ProjectileStartSpeed       = 2000
SWEP.ProjectileAcceleration	    = 0
SWEP.ProjectileHitEffect        = { Name = "MetalSpark", Radius = 0.5, Magnitude = 0.5, Scale = 0.5 }
SWEP.ProjectileHitWorldEffect   = { Name = "BoltImpact", Radius = 1, Magnitude = 1, Scale = 1, ReverseForward = true, TraceThrough = 128 }
SWEP.ProjectileHitSound         = { Sound = "swep_ai_halo_spike_impact" }
SWEP.ProjectileLoopingSound     = false
SWEP.ProjectileRotationSpeed    = 0
SWEP.ProjectileIsExplosive      = false
SWEP.ProjectileTrail            = false

SWEP.ClientModel				= {
	model						= "models/spiker.mdl",
	pos							= Vector(6, 1.4, -1.5),
	angle						= Angle(180, 270, 0),
	size						= Vector(1, 1, 1),
	color						= Color(255, 255, 255, 255),
	skin						= 0,
	bodygroup					= {},
}