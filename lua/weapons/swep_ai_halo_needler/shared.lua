DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO NEEDLER
--]]

SWEP.WorldModel					= "models/weapons/w_smg1.mdl"
SWEP.HoldType					= "smg"

SWEP.MuzzleEffect    			= "NPC_Needler_Muzzle_Effect"
SWEP.EnableShellEffect			= false
SWEP.TracerEffect				= "Needler_Tracer"
SWEP.ReloadSounds				= {}

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_MED
SWEP.Primary.DamageMin			= 6
SWEP.Primary.DamageMax			= 8
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

SWEP.ProjectileModel				= "models/Items/AR2_Grenade.mdl"
SWEP.ProjectileSpeed				= 600
SWEP.ProjectileAcceleration			= 0
SWEP.ProjectileDamageType			= DMG_GENERIC
SWEP.ProjectileHitEffect			= "GlassImpact"
SWEP.ProjectileHitEffectScale		= 0.1
SWEP.ProjectileHitEffectMagnitude	= 0.1
SWEP.ProjectileHitEffectRadius		= 0.1
SWEP.ProjectileHitSound				= "swep_ai_halo_needler_hit"

SWEP.ClientModel				= {
	model						= "models/weapons/npc_haloweapons/needler.mdl",
	pos							= Vector(8, 0.25, 5),
	angle						= Angle(0, 90, -158),
	size						= Vector(1.1, 1.1, 1.1),
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
	
	local projectile = ents.Create("ai_generic_projectile")
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

	projectile:SetModelScale(1)
	projectile:SetColor(255, 0, 255, 128)
	projectile:SetMaterial("null")
	
	projectile:Spawn()

	util.SpriteTrail(projectile, 0, Color(255, 0, 255), false, 20, 10, 0.2, 0, "trails/laser")
	
	self:ShootEffects()
	
	self:TakePrimaryAmmo(1)

end