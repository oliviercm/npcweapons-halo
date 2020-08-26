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

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_MED
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

SWEP.ExplosionRadius			= 200
SWEP.RocketSpeed				= 1000
SWEP.RocketAcceleration			= 0

SWEP.ClientModel				= {
	model						= "models/brute_shot.mdl",
	pos							= Vector(7, 0, 8),
	angle						= Angle(-180, -100, -45),
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
	
	local rocket = ents.Create("ai_rocket_projectile")
	rocket:SetPos(muzzlePos)
	rocket:SetAngles(shootAngle)
	rocket:SetOwner(owner)
	rocket.Damage = math.random(self.Primary.DamageMin, self.Primary.DamageMax)
	rocket.Speed = self.RocketSpeed
	rocket.Acceleration = self.RocketAcceleration
	rocket.ExplosionRadius = self.ExplosionRadius
	rocket.Owner = owner
	
	rocket:Spawn()

	rocket:SetModel("models/Items/AR2_Grenade.mdl")
	
	self:ShootEffects()
	
	self:TakePrimaryAmmo(1)
	
end