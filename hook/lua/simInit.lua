local oldBeginSession = BeginSession
function BeginSession()
    oldBeginSession()
    import('/mods/Santa_Is_Coming_Reloaded/Scripts/script.lua').Init()
end