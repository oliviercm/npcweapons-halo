DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO NEEDLER
--]]

SWEP.WorldModel					= "models/weapons/w_smg1.mdl"
SWEP.HoldType					= "smg"

SWEP.MuzzleEffect    			= "NPC_Needler_Muzzle_Effect"
SWEP.EnableShellEffect			= false
SWEP.TracerEffect				= ""
SWEP.ReloadSounds				= {{0.4, "swep_ai_halo_needler_reload"}}

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_MED

SWEP.Primary.Type               = "projectile"
SWEP.Primary.DamageType         = DMG_GENERIC
SWEP.Primary.DamageMin			= 4
SWEP.Primary.DamageMax			= 6
SWEP.Primary.MinDropoffDistance	= NPC_WEAPONS_MIN_DROPOFF_DISTANCE_SMG
SWEP.Primary.MaxDropoffDistance	= NPC_WEAPONS_MAX_DROPOFF_DISTANCE_SMG
SWEP.Primary.Force				= 9
SWEP.Primary.Spread				= 3
SWEP.Primary.SpreadMoveMult		= NPC_WEAPONS_SPREAD_MOVE_MULT_LOW
SWEP.Primary.BurstMinShots		= 3
SWEP.Primary.BurstMaxShots		= 5
SWEP.Primary.BurstMinDelay		= 0
SWEP.Primary.BurstMaxDelay		= 0
SWEP.Primary.FireDelay			= 0.1
SWEP.Primary.NumBullets			= 1
SWEP.Primary.ClipSize			= 20
SWEP.Primary.DefaultClip		= 20
SWEP.Primary.AimDelayMin		= NPC_WEAPONS_MIN_AIM_DELAY_LOW
SWEP.Primary.AimDelayMax		= NPC_WEAPONS_MAX_AIM_DELAY_LOW
SWEP.Primary.Sound				= {"swep_ai_halo_needler_fire_1", "swep_ai_halo_needler_fire_2", "swep_ai_halo_needler_fire_3"}

SWEP.AimForBody     			= true

SWEP.ProjectileModel            = "models/Items/Flare.mdl"
SWEP.ProjectileModelScale       = 0
SWEP.ProjectileStartSpeed       = 800
SWEP.ProjectileAcceleration	    = 0
SWEP.ProjectileHitEffect        = { Name = "GlassImpact", Radius = 1, Magnitude = 1, Scale = 1 }
SWEP.ProjectileHitSound         = { Sound = "swep_ai_halo_needler_hit" }
SWEP.ProjectileRotationSpeed    = 0
SWEP.ProjectileIsExplosive      = false
SWEP.ProjectileTrail            = {
    Attachment = 0,
    Color = Color(255, 0, 255, 255),
    Additive = false,
    StartWidth = 20,
    EndWidth = 10,
    Lifetime = 0.2,
    TextureRes = 0,
    Texture = "trails/laser",
}

SWEP.ClientModel				= {
	model						= "models/weapons/npc_haloweapons/needler.mdl",
	pos							= Vector(8, 0.25, 5),
	angle						= Angle(0, 90, -158),
	size						= Vector(1.1, 1.1, 1.1),
	color						= Color(255, 255, 255, 255),
	skin						= 0,
	bodygroup					= {},
}