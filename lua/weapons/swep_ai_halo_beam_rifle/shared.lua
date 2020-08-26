DEFINE_BASECLASS("swep_ai_base")

--[[
--HALO BEAM RIFLE
--]]

SWEP.WorldModel					= "models/weapons/w_snip_awp.mdl"
SWEP.HoldType					= "ar2"

SWEP.MuzzleEffect    			= "MuzzleEffect"
SWEP.ShellEffect				= "RifleShellEject"
SWEP.TracerEffect				= "Tracer"
SWEP.ReloadSounds				= {}

SWEP.ReloadTime					= NPC_WEAPONS_RELOAD_TIME_MED
SWEP.Primary.DamageMin			= 5
SWEP.Primary.DamageMax			= 7
SWEP.Primary.MinDropoffDistance	= NPC_WEAPONS_MIN_DROPOFF_DISTANCE_RIFLE
SWEP.Primary.MaxDropoffDistance	= NPC_WEAPONS_MAX_DROPOFF_DISTANCE_RIFLE
SWEP.Primary.Force				= 6
SWEP.Primary.Spread				= 0.030
SWEP.Primary.SpreadMoveMult		= NPC_WEAPONS_SPREAD_MOVE_MULT_MED
SWEP.Primary.BurstMinShots		= 3
SWEP.Primary.BurstMaxShots		= 3
SWEP.Primary.BurstMinDelay		= 0.25
SWEP.Primary.BurstMaxDelay		= 0.35
SWEP.Primary.BurstCancellable	= false
SWEP.Primary.FireDelay			= 0.06
SWEP.Primary.NumBullets			= 1
SWEP.Primary.ClipSize			= 36
SWEP.Primary.DefaultClip		= 36
SWEP.Primary.AimDelayMin		= NPC_WEAPONS_MIN_AIM_DELAY_MED
SWEP.Primary.AimDelayMax		= NPC_WEAPONS_MAX_AIM_DELAY_MED
SWEP.Primary.Sound				= {"swep_ai_halo_br_fire_1", "swep_ai_halo_br_fire_2", "swep_ai_halo_br_fire_3", "swep_ai_halo_br_fire_4", "swep_ai_halo_br_fire_5", "swep_ai_halo_br_fire_6", "swep_ai_halo_br_fire_7"}

SWEP.ClientModel				= {
	model						= "models/beamrifle.mdl",
	pos							= Vector(1, 0, -1),
	angle						= Angle(90, 270, 0),
	size						= Vector(1, 1, 1),
	color						= Color(255, 255, 255, 255),
	skin						= 0,
	bodygroup					= {},
}