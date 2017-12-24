local oldUEL0001 = UEL0001
local christmashat

UEL0001 = Class(oldUEL0001) {
    OnCreate = function(self)
        oldUEL0001.OnCreate(self)
		ForkThread(function()
			WaitSeconds(5)	
			local temphat = self:CreatePropAtBone('Head','/mods/santa_is_coming_reloaded/props/gift_pink/gift_pink_prop.bp') 	
			local pos = temphat:GetPosition()
			local orientation = temphat:GetOrientation()
			christmashat = CreateUnit('CHE0001', self:GetArmy(), pos[1], pos[2], pos[3], orientation[1], orientation[2], orientation[3], orientation[4]) 	
			temphat:Destroy()
			christmashat:AttachTo(self, 'Head') 
			christmashat:SetCanTakeDamage(false)
			christmashat:SetCanBeKilled(false)
		end)
	end,

	OnDestroy = function(self)
		oldUEL0001.OnDestroy(self)
		christmashat:Destroy()
	end,
}

TypeClass = UEL0001
