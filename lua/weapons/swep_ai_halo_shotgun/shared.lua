DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO SHOTGUN
--]]

SWEP.WorldModel					= "models/weapons/w_shotgun.mdl"
SWEP.HoldType					= "shotgun"

SWEP.MuzzleEffect    			= "MuzzleEffect"
SWEP.ShellEffect				= "ShotgunShellEject"
SWEP.TracerEffect				= "Tracer"
SWEP.ReloadSounds				= {}

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_MED
SWEP.Primary.DamageMin			= 8
SWEP.Primary.DamageMax			= 10
SWEP.Primary.MinDropoffDistance	= NPC_WEAPONS_MIN_DROPOFF_DISTANCE_SHOTGUN
SWEP.Primary.MaxDropoffDistance	= NPC_WEAPONS_MAX_DROPOFF_DISTANCE_SHOTGUN
SWEP.Primary.Force				= 9
SWEP.Primary.Spread				= 0.090
SWEP.Primary.SpreadMoveMult		= NPC_WEAPONS_SPREAD_MOVE_MULT_NONE
SWEP.Primary.BurstMinShots		= 1
SWEP.Primary.BurstMaxShots		= 1
SWEP.Primary.BurstMinDelay		= 0
SWEP.Primary.BurstMaxDelay		= 0.2
SWEP.Primary.FireDelay			= 0.9
SWEP.Primary.NumBullets			= 7
SWEP.Primary.ClipSize			= 6
SWEP.Primary.DefaultClip		= 6
SWEP.Primary.AimDelayMin		= NPC_WEAPONS_MIN_AIM_DELAY_LOW
SWEP.Primary.AimDelayMax		= NPC_WEAPONS_MAX_AIM_DELAY_LOW
SWEP.Primary.Sound				= {"swep_ai_halo_shotgun_fire_1", "swep_ai_halo_shotgun_fire_2", "swep_ai_halo_shotgun_fire_3"}
SWEP.Primary.BoltSound			= "swep_ai_halo_shotgun_pump"

SWEP.ClientModel				= {
	model						= "models/weapons/npc_haloweapons/shotty.mdl",
	pos							= Vector(12.272, 1, -3.701),
	angle						= Angle(-180, -85, 11),
	size						= Vector(0.9, 0.9, 0.9),
	color						= Color(255, 255, 255, 255),
	skin						= 0,
	bodygroup					= {},
}

function SWEP:ShootEffects()
	
	self:EmitSound(type(self.Primary.Sound) == "string" and self.Primary.Sound or self.Primary.Sound[math.random(#self.Primary.Sound)])

	timer.Simple(0.4, function()

		if IsValid(self) and IsValid(self:GetOwner()) then

			sound.Play(self.Primary.BoltSound, self:GetPos(), SNDLVL_NORM)
			
			local shellEffect = EffectData()
			local shellAttach = self:GetAttachment(self.ShellAttachment)
			shellEffect:SetEntity(self)
			shellEffect:SetOrigin(shellAttach.Pos)
			shellEffect:SetAngles(shellAttach.Ang)
			shellEffect:SetScale(1)
			shellEffect:SetMagnitude(1)
			shellEffect:SetRadius(1)
			util.Effect(self.ShellEffect, shellEffect)

		end

	end)

	local muzzleEffect = EffectData()
	local muzzleAttach = self:GetAttachment(self.MuzzleAttachment)
	muzzleEffect:SetEntity(self)
	muzzleEffect:SetOrigin(muzzleAttach.Pos)
	muzzleEffect:SetAngles(muzzleAttach.Ang)
	muzzleEffect:SetScale(1)
	muzzleEffect:SetMagnitude(1)
	muzzleEffect:SetRadius(1)
	util.Effect(self.MuzzleEffect, muzzleEffect)
	
	self:GetOwner():MuzzleFlash()

end