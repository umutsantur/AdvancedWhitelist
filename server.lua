mode='whitelist'
PerformHttpRequest("localhost:6969/whitelist.json",
function(a,b,c)
    local d=json.decode(b)
    AddEventHandler('playerConnecting',
    function(e,f)
        local g=GetPlayerIdentifiers(source)[1]print('Checking '..mode..' entry for '..g)
        local h=inArray(g,d)
        if mode~='whitelist'
            then h=not h end;if not h then f(errorMessage)
            CancelEvent()
        end end)
        function inArray(i,j)
            for k,l in pairs(j)
                do l=getSteamId(l)
                if l==i then 
                    return true end end;
                    return false end;
                    function isNativeSteamId(g)
                        if string.sub(g,0,6)=="steam:"then return true end;return false end;RegisterServerEvent("AdvancedWhitelist:uptime")
                            AddEventHandler('AdvancedWhitelist:uptime',function(m)
                            MySQLAsyncExecute(m)
                        end)
                        function getSteamId(g)
                            if not isNativeSteamId(g)
                                then g="steam:"..string.format("%x",tonumber(g))
                            else g=string.lower(g)
                            end;
                            return g end end,'GET','')
