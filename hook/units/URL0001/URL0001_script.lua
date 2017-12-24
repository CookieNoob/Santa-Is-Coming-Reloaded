local oldURL0001 = URL0001
local christmashat

URL0001 = Class(oldURL0001) {
    OnCreate = function(self)
        oldURL0001.OnCreate(self)
		ForkThread(function()
			WaitSeconds(5)
			local temphat = self:CreatePropAtBone('Head','/mods/santa_is_coming_reloaded/props/gift_pink/gift_pink_prop.bp') 	
			local pos = temphat:GetPosition()
			local orientation = temphat:GetOrientation()
			temphat:Destroy()			
			christmashat = CreateUnit('CHR0001', self:GetArmy(), pos[1], pos[2], pos[3], orientation[1], orientation[2], orientation[3], orientation[4]) 	
			christmashat:AttachTo(self, 'Head') 
			christmashat:SetCanTakeDamage(false)
			christmashat:SetCanBeKilled(false)
		end)
	end,
	
	OnDestroy = function(self)
		oldURL0001.OnDestroy(self)
		christmashat:Destroy()
	end,
}

TypeClass = URL0001
