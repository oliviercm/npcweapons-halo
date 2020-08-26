DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO SNIPER RIFLE
--]]

SWEP.WorldModel					= "models/weapons/w_snip_awp.mdl"
SWEP.HoldType					= "ar2"

SWEP.MuzzleEffect    			= "MuzzleEffect"
SWEP.ShellEffect				= "RifleShellEject"
SWEP.TracerEffect				= ""
SWEP.ReloadSounds				= {}
SWEP.ExtraShootEffects			= {
	{ EffectName = "Sniper_Bullet_Contrail", Scale = 4 },
	{ EffectName = "Sparks", Scale = 1, Magnitude = 1, Radius = 1 },
}

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_HIGH
SWEP.Primary.DamageMin			= 50
SWEP.Primary.DamageMax			= 50
SWEP.Primary.MinDropoffDistance	= NPC_WEAPONS_MIN_DROPOFF_DISTANCE_SNIPER
SWEP.Primary.MaxDropoffDistance	= NPC_WEAPONS_MAX_DROPOFF_DISTANCE_SNIPER
SWEP.Primary.Force				= 20
SWEP.Primary.Spread				= 0.005
SWEP.Primary.SpreadMoveMult		= NPC_WEAPONS_SPREAD_MOVE_MULT_VHIGH
SWEP.Primary.BurstMinShots		= 1
SWEP.Primary.BurstMaxShots		= 1
SWEP.Primary.BurstMinDelay		= 0
SWEP.Primary.BurstMaxDelay		= 0.2
SWEP.Primary.FireDelay			= 1
SWEP.Primary.NumBullets			= 1
SWEP.Primary.ClipSize			= 4
SWEP.Primary.DefaultClip		= 4
SWEP.Primary.AimDelayMin		= NPC_WEAPONS_MIN_AIM_DELAY_HIGH
SWEP.Primary.AimDelayMax		= NPC_WEAPONS_MAX_AIM_DELAY_HIGH
SWEP.Primary.Sound				= {"swep_ai_halo_sniper_rifle_fire_1", "swep_ai_halo_sniper_rifle_fire_2", "swep_ai_halo_sniper_rifle_fire_3", "swep_ai_halo_sniper_rifle_fire_4"}

SWEP.ClientModel				= {
	model						= "models/weapons/npc_haloweapons/sniper.mdl",
	pos							= Vector(16.6, 1.5, -5.5),
	angle						= Angle(0, 90, -167.706),
	size						= Vector(1, 1, 1),
	color						= Color(255, 255, 255, 255),
	skin						= 0,
	bodygroup					= {},
}