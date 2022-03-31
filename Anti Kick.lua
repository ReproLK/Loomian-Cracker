if not _G.didantikick then
    _G.didantikick = true
    OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
        local NameCallMethod = getnamecallmethod()
    
        if tostring(string.lower(NameCallMethod)) == "kick" then
            return nil
        end
    
        return OldNameCall(Self, ...)
    end)
end
