EFFECT.Mat = Material("effects/sniper_rifle_contrail")

function EFFECT:Init(data)

	self.texcoord = math.Rand(0, 20) / 3
	self.Position = data:GetStart()
	self.WeaponEnt = data:GetEntity()
	self.Scale = data:GetScale()
	self.Attachment = data:GetAttachment()
	
	self.StartPos = self:GetTracerShootPos(self.Position, self.WeaponEnt, self.Attachment)
	self.EndPos = data:GetOrigin()
	
	self.Entity:SetCollisionBounds(self.StartPos -  self.EndPos, Vector(110, 110, 110))
	self.Entity:SetRenderBoundsWS(self.StartPos, self.EndPos, Vector() * 1)
	
	self.StartPos = self:GetTracerShootPos(self.Position, self.WeaponEnt, self.Attachment)
	
	self.Alpha = 255
	self.FlashY = 255
	
end


function EFFECT:Think()

	self.FlashY = self.FlashY - 1800 * FrameTime()
	if (self.FlashY < 0) then self.FlashY = 0 end

	self.Alpha = self.Alpha - 900 * FrameTime()
	if (self.Alpha < 0) then return false end
	
	return true

end


function EFFECT:Render()
	
	self.Length = (self.StartPos - self.EndPos):Length()
	
	local texcoord = self.texcoord
	
	render.SetMaterial(self.Mat)
	render.DrawBeam(self.StartPos,
		self.EndPos,
		self.Scale,
		texcoord,
		texcoord + self.Length / 256,
		Color(255, 255, math.Clamp(255 - self.FlashY, 100, 255), math.Clamp(self.Alpha, 0, 200))
	)
					 
end