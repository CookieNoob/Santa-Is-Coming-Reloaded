local oldXSL0001 = XSL0001
local christmashat

XSL0001 = Class(oldXSL0001) {
    OnCreate = function(self)
        oldXSL0001.OnCreate(self)
		ForkThread(function()
			WaitSeconds(5)
			christmashat = self:CreatePropAtBone('Torso','/mods/santa_is_coming_reloaded/props/santahat_Seraphim/santahat_Seraphim_prop.bp') 	
			christmashat:AttachTo(self, 'Torso')
			christmashat:SetCanTakeDamage(false)
			christmashat:SetCanBeKilled(false)
		end)
	end,
	
	OnDestroy = function(self)
		oldXSL0001.OnDestroy(self)
		christmashat:Destroy()
	end,
}

TypeClass = XSL0001
