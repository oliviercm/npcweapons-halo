

function EFFECT:Init(data)
	
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	
	self.Position = self:GetTracerShootPos(data:GetOrigin(), self.WeaponEnt, self.Attachment)
	self.Forward = data:GetNormal()
	self.Angle = self.Forward:Angle()
	self.Right = self.Angle:Right()
	if !self.WeaponEnt:IsValid() or !self.WeaponEnt:GetOwner():IsValid() then return end
	local AddVel = self.WeaponEnt:GetOwner():GetVelocity()
	
	local emitter = ParticleEmitter(self.Position)
		
		for i=0,5 do 
		local particle = emitter:Add("effects/combinemuzzle2_dark", self.Position+(self.Forward*i*1.5))
		particle:SetVelocity((self.Forward*i*5) + AddVel)
		particle:SetDieTime(0.10)
		particle:SetStartAlpha(100)
		particle:SetEndAlpha(200)
		particle:SetStartSize(5-i)
		particle:SetEndSize(12-i)
		particle:SetRoll(math.Rand(180,480))
		particle:SetRollDelta(math.Rand(-1,1))
		particle:SetColor(0,255,50)	
		end

		
	emitter:Finish()

end


function EFFECT:Think()

	return false
	
end


function EFFECT:Render()

	
end