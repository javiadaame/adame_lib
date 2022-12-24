adame_lib = setmetatable({
    name = 'adame_lib'
}, {
    __newindex = function(self, name, fn)
        rawset(self, name, fn)
    end
})

function adame_lib.isLoaded()
    return true
end
