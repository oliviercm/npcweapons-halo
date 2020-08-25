function EFFECT:Init( data )


local Pos 		= data:GetOrigin()

local Scale 		= data:GetScale()	
local Radius 		= data:GetRadius()

local DirVec 		= Vector(0,0,0)
local Particles 	= data:GetMagnitude()
local Angle 		= DirVec:Angle()
local DebrizzlemyNizzle = 20+data:GetScale()	

self.Particles 		= data:GetMagnitude()
self.Scale 		= data:GetScale()	
self.Size 		= self.Scale
self.Origin 		= Pos	

self.emitter 		= ParticleEmitter( Pos )

		for i=1,5 do 
			local Flash = self.emitter:Add( "effects/muzzleflash1", Pos )
			if (Flash) then
				Flash:SetVelocity( Vector(0,0,0) )
				Flash:SetAirResistance( 200 )
				Flash:SetDieTime( 0.4 )
				Flash:SetStartAlpha( 100 )
				Flash:SetEndAlpha( 0 )
				Flash:SetStartSize( Scale*100 )
				Flash:SetEndSize( 0 )
				Flash:SetRoll( math.Rand(180,480) )
				Flash:SetRollDelta( math.Rand(-1,1) )
				Flash:SetColor(50,255,200)	
			end
		end


end

function EFFECT:Think( )
	return false
end


function EFFECT:Render()


end
