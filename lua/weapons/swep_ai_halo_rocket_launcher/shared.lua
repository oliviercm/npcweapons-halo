DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO ROCKET LAUNCHER
--]]

SWEP.WorldModel					= "models/weapons/w_rocket_launcher.mdl"
SWEP.HoldType					= "rpg"

SWEP.MuzzleEffect    			= "MuzzleEffect"
SWEP.EnableShellEffect			= false
SWEP.TracerEffect				= "Tracer"
SWEP.ReloadSounds				= {{0, "swep_ai_halo_rocket_launcher_reload"}}

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_HIGH
SWEP.Primary.DamageMin			= 60
SWEP.Primary.DamageMax			= 60
SWEP.Primary.Force				= 0
SWEP.Primary.Spread				= 1.5
SWEP.Primary.SpreadMoveMult		= NPC_WEAPONS_SPREAD_MOVE_MULT_LOW
SWEP.Primary.BurstMinShots		= 1
SWEP.Primary.BurstMaxShots		= 1
SWEP.Primary.BurstMinDelay		= 0
SWEP.Primary.BurstMaxDelay		= 0.2
SWEP.Primary.FireDelay			= 0.6
SWEP.Primary.NumBullets			= 1
SWEP.Primary.ClipSize			= 2
SWEP.Primary.DefaultClip		= 2
SWEP.Primary.AimDelayMin		= NPC_WEAPONS_MIN_AIM_DELAY_HIGH
SWEP.Primary.AimDelayMax		= NPC_WEAPONS_MAX_AIM_DELAY_HIGH
SWEP.Primary.Sound				= {"swep_ai_halo_rocket_launcher_fire_1", "swep_ai_halo_rocket_launcher_fire_2", "swep_ai_halo_rocket_launcher_fire_3", "swep_ai_halo_rocket_launcher_fire_4"}

SWEP.ExplosionRadius			= 256
SWEP.RocketSpeed				= 800
SWEP.RocketAcceleration			= 250

SWEP.ClientModel				= {
	model						= "models/rocket.mdl",
	pos							= Vector(-2, 0.5, -4),
	angle						= Angle(180, -90, 10),
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
	
	self:ShootEffects()
	
	self:TakePrimaryAmmo(1)
	
end