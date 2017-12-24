local oldURL0001 = URL0001
local christmashat

URL0001 = Class(oldURL0001) {
    OnCreate = function(self)
        oldURL0001.OnCreate(self)
		ForkThread(function()
			WaitSeconds(5)
			christmashat = self:CreatePropAtBone('Head','/mods/santa_is_coming_reloaded/props/santahat_Cybran/santahat_Cybran_prop.bp') 	
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
