local oldUAL0001 = UAL0001
local christmashat

UAL0001 = Class(oldUAL0001) {
    OnCreate = function(self)
        oldUAL0001.OnCreate(self)
		ForkThread(function()
			WaitSeconds(5)
			christmashat = self:CreatePropAtBone('Head','/mods/santa_is_coming_reloaded/props/santahat_Aeon/santahat_Aeon_prop.bp') 	
			christmashat:AttachTo(self, 'Head') 
			christmashat:SetCanTakeDamage(false)
			christmashat:SetCanBeKilled(false)
		end)
	end,
	
	OnDestroy = function(self)
		oldUAL0001.OnDestroy(self)
		christmashat:Destroy()
	end,
}

TypeClass = UAL0001
