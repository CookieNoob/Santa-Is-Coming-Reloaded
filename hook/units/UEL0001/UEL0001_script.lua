local oldUEL0001 = UEL0001
local christmashat

UEL0001 = Class(oldUEL0001) {
    OnCreate = function(self)
        oldUEL0001.OnCreate(self)
		ForkThread(function()
			WaitSeconds(5)
			christmashat = self:CreatePropAtBone('Head','/mods/santa_is_coming_reloaded/props/santahat_UEF/santahat_UEF_prop.bp') 	
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
