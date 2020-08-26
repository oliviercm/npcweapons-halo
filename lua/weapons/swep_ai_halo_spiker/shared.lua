DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO SPIKER
--]]

SWEP.WorldModel					= "models/weapons/w_rif_famas.mdl"
SWEP.HoldType					= "smg"

SWEP.MuzzleEffect    			= "AirboatMuzzleFlash"
SWEP.EnableShellEffect			= false
SWEP.TracerEffect				= "Tracer"
SWEP.ReloadSounds				= {}

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_MED
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

SWEP.ProjectileModel				= "models/crossbow_bolt.mdl"
SWEP.ProjectileSpeed				= 2000
SWEP.ProjectileAcceleration			= 0
SWEP.ProjectileDamageType			= DMG_GENERIC
SWEP.ProjectileHitEffect			= "MetalSpark"
SWEP.ProjectileHitEffectScale		= 0.5
SWEP.ProjectileHitEffectMagnitude	= 0.5
SWEP.ProjectileHitEffectRadius		= 0.5
SWEP.ProjectileHitSound				= "swep_ai_halo_spike_impact"

SWEP.ClientModel				= {
	model						= "models/spiker.mdl",
	pos							= Vector(6, 1.4, -1.5),
	angle						= Angle(180, 270, 0),
	size						= Vector(1, 1, 1),
	color						= Color(255, 255, 255, 255),
	skin						= 0,
	bodygroup					= {},
}

function SWEP:Shoot()

	local owner = self:GetOwner()
	local enemy = owner:GetEnemy()
	local muzzlePos = owner:GetPos():Distance(enemy:GetPos()) > 128 and self:GetAttachment(self.MuzzleAttachment).Pos or owner:WorldSpaceCenter()
	local targetPos = enemy:BodyTarget(muzzlePos) or enemy:WorldSpaceCenter()
	local inaccuracy = self.Primary.Spread
	local shootAngle = Vector(targetPos.x - muzzlePos.x, targetPos.y - muzzlePos.y, targetPos.z - muzzlePos.z):Angle()
	shootAngle.p = shootAngle.p + math.Rand(-inaccuracy, inaccuracy)
	shootAngle.y = shootAngle.y + math.Rand(-inaccuracy, inaccuracy)
	
	local projectile = ents.Create("ai_crossbow_projectile")
	projectile:SetPos(muzzlePos)
	projectile:SetAngles(shootAngle)
	projectile:SetOwner(owner)
	projectile.Model = self.ProjectileModel
	projectile.Damage = math.random(self.Primary.DamageMin, self.Primary.DamageMax)
	projectile.DamageType = self.ProjectileDamageType
	projectile.Force = self.Primary.Force
	projectile.Speed = self.ProjectileSpeed
	projectile.Acceleration = self.ProjectileAcceleration
	projectile.Owner = owner
	projectile.ProjectileHitEffect = self.ProjectileHitEffect
	projectile.ProjectileHitEffectScale = self.ProjectileHitEffectScale
	projectile.ProjectileHitEffectMagnitude = self.ProjectileHitEffectMagnitude
	projectile.ProjectileHitEffectRadius = self.ProjectileHitEffectRadius
	projectile.ProjectileHitSound = self.ProjectileHitSound
	
	projectile:Spawn()

	projectile:SetModelScale(0.75)
	
	self:ShootEffects()
	
	self:TakePrimaryAmmo(1)

end