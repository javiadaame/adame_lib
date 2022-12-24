local function allow(allow)
    return allow == false and 'deny' or 'allow'
end

function adame_lib.addAce(principal, ace, allow)
    if type(principal) == 'number' then
        principal = 'player.' .. principal
    end

    ExecuteCommand(('add_ace %s %s %s'):format(principal, ace, allow(allow)))
end

function adame_lib.removeAce(principal, ace, allow)
    if type(principal) == 'number' then
        principal = 'player.' .. principal
    end

    ExecuteCommand(('remove_ace %s %s %s'):format(principal, ace, allow(allow)))
end

function adame_lib.addPrincipal(child, parent)
    if type(child) == 'number' then
        child = 'player.' .. child
    end

    ExecuteCommand(('add_principal %s %s'):format(child, parent))
end

function adame_lib.removePrincipal(child, parent)
    if type(child) == 'number' then
        child = 'player.' .. child
    end

    ExecuteCommand(('remove_principal %s %s'):format(child, parent))
end

adame_lib.callback.register('adame_lib:checkPlayerAce', function(source, command)
    return IsPlayerAceAllowed(source, command)
end)

