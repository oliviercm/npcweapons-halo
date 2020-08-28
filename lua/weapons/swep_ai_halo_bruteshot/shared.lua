DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO BRUTESHOT
--]]

SWEP.WorldModel					= "models/weapons/w_shotgun.mdl"
SWEP.HoldType					= "shotgun"

SWEP.MuzzleEffect    			= "MuzzleEffect"
SWEP.EnableShellEffect			= false
SWEP.TracerEffect				= "Tracer"
SWEP.ReloadSounds				= {{0, "swep_ai_halo_bruteshot_reload"}}
SWEP.ImpactDecal				= "FadingScorch"

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_MED

SWEP.Primary.Type               = "projectile"
SWEP.Primary.DamageType         = DMG_BLAST
SWEP.Primary.DamageMin			= 20
SWEP.Primary.DamageMax			= 30
SWEP.Primary.MinDropoffDistance	= NPC_WEAPONS_MIN_DROPOFF_DISTANCE_RIFLE
SWEP.Primary.MaxDropoffDistance	= NPC_WEAPONS_MAX_DROPOFF_DISTANCE_RIFLE
SWEP.Primary.Force				= 6
SWEP.Primary.Spread				= 1.5
SWEP.Primary.SpreadMoveMult		= NPC_WEAPONS_SPREAD_MOVE_MULT_MED
SWEP.Primary.BurstMinShots		= 1
SWEP.Primary.BurstMaxShots		= 1
SWEP.Primary.BurstMinDelay		= 0
SWEP.Primary.BurstMaxDelay		= 0.2
SWEP.Primary.BurstCancellable	= false
SWEP.Primary.FireDelay			= 0.4
SWEP.Primary.NumBullets			= 1
SWEP.Primary.ClipSize			= 6
SWEP.Primary.DefaultClip		= 6
SWEP.Primary.AimDelayMin		= NPC_WEAPONS_MIN_AIM_DELAY_MED
SWEP.Primary.AimDelayMax		= NPC_WEAPONS_MAX_AIM_DELAY_MED
SWEP.Primary.Sound				= "swep_ai_halo_bruteshot_fire_1"

SWEP.AimForBody     			= true

SWEP.ProjectileModel            = "models/Items/AR2_Grenade.mdl"
SWEP.ProjectileStartSpeed       = 1000
SWEP.ProjectileAcceleration	    = 0
SWEP.ProjectileHitEffect        = { Name = "Explosion", Radius = 1, Magnitude = 1, Scale = 1 }
SWEP.ProjectileHitSound         = nil
SWEP.ProjectileLoopingSound     = "swep_ai_halo_rocket_launcher_rocket_sound"
SWEP.ProjectileRotationSpeed    = 1000
SWEP.ProjectileIsExplosive      = true
SWEP.ProjectileExplosionRadius  = 200
SWEP.ProjectileTrail            = {
    Attachment = 0,
    Color = Color(255, 255, 255, 200),
    Additive = true,
    StartWidth = 5,
    EndWidth = 0,
    Lifetime = 0.3,
    TextureRes = 0,
    Texture = "trails/smoke.vmt",
}

SWEP.ClientModel				= {
	model						= "models/brute_shot.mdl",
	pos							= Vector(7, 0, 8),
	angle						= Angle(-180, -100, -45),
	size						= Vector(1, 1, 1),
	color						= Color(255, 255, 255, 255),
	skin						= 0,
	bodygroup					= {},
}