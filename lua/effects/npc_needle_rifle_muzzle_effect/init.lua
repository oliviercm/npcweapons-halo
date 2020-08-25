

function EFFECT:Init(data)
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()

	self.Position = self:GetTracerShootPos(data:GetOrigin(), self.WeaponEnt, self.Attachment)
	self.Forward = data:GetNormal()
	self.Angle = self.Forward:Angle()
	self.Right = self.Angle:Right()
if !self.WeaponEnt:IsValid() or !self.WeaponEnt:GetOwner():IsValid() then return end
		self.AddVel = self.WeaponEnt:GetOwner():GetVelocity()	|| Vector(0,0,0)




	//local AddVel = self.WeaponEnt:GetOwner():GetVelocity()

	local emitter = ParticleEmitter(self.Position)
					
		
					for i=0,5 do 
		local particle = emitter:Add("effects/combinemuzzle2_dark", self.Position+(self.Forward*i*1.2))
		particle:SetVelocity((self.Forward*i*5) + self.AddVel)
		particle:SetDieTime(0.05)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(230)
		particle:SetCollide( true );
		particle:SetStartSize(5-i)
		particle:SetEndSize(8-i)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(255,130,255)	
		end		

					for i=0,5 do 
		local particle = emitter:Add("effects/combinemuzzle1_dark", self.Position+(self.Forward*i*1.2))
		particle:SetVelocity((self.Forward*i*5) + self.AddVel)
		particle:SetDieTime(0.05)
		particle:SetStartAlpha(255)
		particle:SetEndAlpha(230)
		particle:SetCollide( true );
		particle:SetStartSize(5-i)
		particle:SetEndSize(8-i)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(255,130,255)	
		end			
	emitter:Finish()
end


function EFFECT:Think()

	return false
	
end


function EFFECT:Render()

	
end



