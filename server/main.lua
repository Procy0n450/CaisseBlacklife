ESX = nil

TriggerEvent("RUN_SHARED_esx:getSharedObject", function(obj) ESX = obj end)

ESX.RegisterUsableItem('caisse_bronze', function(source)
    local source = source 
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('caisse_bronze', 1)
    local choose = {
        [1] = Caisse["caisse_bronze"]["money"][math.random(1,#Caisse["caisse_bronze"]["money"])],
        [2] = Caisse["caisse_bronze"]["weapon"][math.random(1,#Caisse["caisse_bronze"]["weapon"])],
        [3] = Caisse["caisse_bronze"]["coins"][math.random(1,#Caisse["caisse_bronze"]["coins"])],
        randomNumber = math.random(1,3)
    }
    if choose.randomNumber == 1 then 
        xPlayer.addAccountMoney('bank', choose[choose.randomNumber])
        TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..choose[choose.randomNumber].."$")
    elseif choose.randomNumber == 2 then 
        xPlayer.addWeapon(choose[choose.randomNumber], 250)
        TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..choose[choose.randomNumber].." Avec 250 Munitions")
    elseif choose.randomNumber == 3 then 
        MySQL.Async.fetchAll('SELECT * FROM ak4y_donatesystem WHERE citizenid = @citizenid', {['@citizenid'] = xPlayer.identifier}, function(result)
            if result[1] == nil then
                MySQL.Async.execute('INSERT INTO ak4y_donatesystem (citizenid, credit) VALUES (@citizenid, @credit)', {
                    ["@citizenid"] = xPlayer.identifier,
                    ["@credit"] = tonumber(choose[choose.randomNumber]),
                })
                TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..tonumber(choose[choose.randomNumber]).."Coins")
            else
                MySQL.Async.execute('UPDATE ak4y_donatesystem SET credit = @credit WHERE citizenid = @citizenid', {
                    ["@citizenid"] = xPlayer.identifier,
                    ["@credit"] = result[1].credit + tonumber(choose[choose.randomNumber]),
                })
                TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..tonumber(choose[choose.randomNumber]).."Coins")
            end
        end)
    end
    exports.sCore:SendLogs(1752220,"Ouverture Caisse", "- Joueurs : "..GetPlayerName(source).."\n- License Joueurs : "..xPlayer.identifier.."\n- Reward : "..choose[choose.randomNumber].."","https://discord.com/api/webhooks/991058390627282974/O7gneiCxSmUobAB2EkN-qySvqwI1owXjV7qjxvEfyqo2yC3WvklzmqRDyTsFHUc__g7O")
end)

ESX.RegisterUsableItem('caisse_argent', function(source)
    local source = source 
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('caisse_argent', 1)
    local choose = {
        [1] = Caisse["caisse_argent"]["money"][math.random(1,#Caisse["caisse_argent"]["money"])],
        [2] = Caisse["caisse_argent"]["weapon"][math.random(1,#Caisse["caisse_argent"]["weapon"])],
        [3] = Caisse["caisse_argent"]["coins"][math.random(1,#Caisse["caisse_argent"]["coins"])],
        randomNumber = math.random(1,3)
    }
    if choose.randomNumber == 1 then 
        xPlayer.addAccountMoney('bank', choose[choose.randomNumber])
        TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..choose[choose.randomNumber].."$")
    elseif choose.randomNumber == 2 then
        xPlayer.addWeapon(choose[choose.randomNumber], 250)
        TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..choose[choose.randomNumber].." Avec 250 Munitions")
    elseif choose.randomNumber == 3 then 
        MySQL.Async.fetchAll('SELECT * FROM ak4y_donatesystem WHERE citizenid = @citizenid', {['@citizenid'] = xPlayer.identifier}, function(result)
            if result[1] == nil then
                MySQL.Async.execute('INSERT INTO ak4y_donatesystem (citizenid, credit) VALUES (@citizenid, @credit)', {
                    ["@citizenid"] = xPlayer.identifier,
                    ["@credit"] = tonumber(choose[choose.randomNumber]),
                })
                TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..tonumber(choose[choose.randomNumber]).."Coins")
            else
                MySQL.Async.execute('UPDATE ak4y_donatesystem SET credit = @credit WHERE citizenid = @citizenid', {
                    ["@citizenid"] = xPlayer.identifier,
                    ["@credit"] = result[1].credit + tonumber(choose[choose.randomNumber]),
                })
                TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..tonumber(choose[choose.randomNumber]).."Coins")
            end
        end)
    end
    exports.sCore:SendLogs(1752220,"Ouverture Caisse", "- Joueurs : "..GetPlayerName(source).."\n- License Joueurs : "..xPlayer.identifier.."\n- Reward : "..choose[choose.randomNumber].."","https://discord.com/api/webhooks/991058390627282974/O7gneiCxSmUobAB2EkN-qySvqwI1owXjV7qjxvEfyqo2yC3WvklzmqRDyTsFHUc__g7O")
end)

ESX.RegisterUsableItem('caisse_gold', function(source)
    local source = source 
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('caisse_gold', 1)
    local choose = {
        [1] = Caisse["caisse_gold"]["money"][math.random(1,#Caisse["caisse_gold"]["money"])],
        [2] = Caisse["caisse_gold"]["weapon"][math.random(1,#Caisse["caisse_gold"]["weapon"])],
        [3] = Caisse["caisse_gold"]["coins"][math.random(1,#Caisse["caisse_gold"]["coins"])],
        randomNumber = math.random(1,3)
    }
    if choose.randomNumber == 1 then 
        xPlayer.addAccountMoney('bank', choose[choose.randomNumber])
        TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..choose[choose.randomNumber].."$")
    elseif choose.randomNumber == 2 then
        xPlayer.addWeapon(choose[choose.randomNumber], 250)
        TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..choose[choose.randomNumber].." Avec 250 Munitions")
    elseif choose.randomNumber == 3 then 
        MySQL.Async.fetchAll('SELECT * FROM ak4y_donatesystem WHERE citizenid = @citizenid', {['@citizenid'] = xPlayer.identifier}, function(result)
            if result[1] == nil then
                MySQL.Async.execute('INSERT INTO ak4y_donatesystem (citizenid, credit) VALUES (@citizenid, @credit)', {
                    ["@citizenid"] = xPlayer.identifier,
                    ["@credit"] = tonumber(choose[choose.randomNumber]),
                })
                TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..tonumber(choose[choose.randomNumber]).."Coins")
            else
                MySQL.Async.execute('UPDATE ak4y_donatesystem SET credit = @credit WHERE citizenid = @citizenid', {
                    ["@citizenid"] = xPlayer.identifier,
                    ["@credit"] = result[1].credit + tonumber(choose[choose.randomNumber]),
                })
                TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..tonumber(choose[choose.randomNumber]).."Coins")
            end
        end)
    end
    exports.sCore:SendLogs(1752220,"Ouverture Caisse", "- Joueurs : "..GetPlayerName(source).."\n- License Joueurs : "..xPlayer.identifier.."\n- Reward : "..choose[choose.randomNumber].."","https://discord.com/api/webhooks/991058390627282974/O7gneiCxSmUobAB2EkN-qySvqwI1owXjV7qjxvEfyqo2yC3WvklzmqRDyTsFHUc__g7O")
end)

ESX.RegisterUsableItem('caisse_ruby', function(source)
    local source = source 
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('caisse_ruby', 1)
    local choose = {
        [1] = Caisse["caisse_ruby"]["money"][math.random(1,#Caisse["caisse_ruby"]["money"])],
        [2] = Caisse["caisse_ruby"]["weapon"][math.random(1,#Caisse["caisse_ruby"]["weapon"])],
        [3] = Caisse["caisse_ruby"]["coins"][math.random(1,#Caisse["caisse_ruby"]["coins"])],
        randomNumber = math.random(1,3)
    }
    if choose.randomNumber == 1 then 
        xPlayer.addAccountMoney('bank', choose[choose.randomNumber])
        TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..choose[choose.randomNumber].."$")
    elseif choose.randomNumber == 2 then
        xPlayer.addWeapon(choose[choose.randomNumber], 250)
        TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..choose[choose.randomNumber].." Avec 250 Munitions")
    elseif choose.randomNumber == 3 then 
        MySQL.Async.fetchAll('SELECT * FROM ak4y_donatesystem WHERE citizenid = @citizenid', {['@citizenid'] = xPlayer.identifier}, function(result)
            if result[1] == nil then
                MySQL.Async.execute('INSERT INTO ak4y_donatesystem (citizenid, credit) VALUES (@citizenid, @credit)', {
                    ["@citizenid"] = xPlayer.identifier,
                    ["@credit"] = tonumber(choose[choose.randomNumber]),
                })
                TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..tonumber(choose[choose.randomNumber]).."Coins")
            else
                MySQL.Async.execute('UPDATE ak4y_donatesystem SET credit = @credit WHERE citizenid = @citizenid', {
                    ["@citizenid"] = xPlayer.identifier,
                    ["@credit"] = result[1].credit + tonumber(choose[choose.randomNumber]),
                })
                TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..tonumber(choose[choose.randomNumber]).."Coins")
            end
        end)
    end
    exports.sCore:SendLogs(1752220,"Ouverture Caisse", "- Joueurs : "..GetPlayerName(source).."\n- License Joueurs : "..xPlayer.identifier.."\n- Reward : "..choose[choose.randomNumber].."","https://discord.com/api/webhooks/991058390627282974/O7gneiCxSmUobAB2EkN-qySvqwI1owXjV7qjxvEfyqo2yC3WvklzmqRDyTsFHUc__g7O")
end)

ESX.RegisterUsableItem('caisse_emeraude', function(source)
    local source = source 
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('caisse_emeraude', 1)
    local choose = {
        [1] = Caisse["caisse_emeraude"]["money"][math.random(1,#Caisse["caisse_emeraude"]["money"])],
        [2] = Caisse["caisse_emeraude"]["weapon"][math.random(1,#Caisse["caisse_emeraude"]["weapon"])],
        [3] = Caisse["caisse_emeraude"]["coins"][math.random(1,#Caisse["caisse_emeraude"]["coins"])],
        randomNumber = math.random(1,3)
    }
    if choose.randomNumber == 1 then 
        xPlayer.addAccountMoney('bank', choose[choose.randomNumber])
        TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..choose[choose.randomNumber].."$")
    elseif choose.randomNumber == 2 then
        xPlayer.addWeapon(choose[choose.randomNumber], 250)
        TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..choose[choose.randomNumber].." Avec 250 Munitions")
    elseif choose.randomNumber == 3 then 
        MySQL.Async.fetchAll('SELECT * FROM ak4y_donatesystem WHERE citizenid = @citizenid', {['@citizenid'] = xPlayer.identifier}, function(result)
            if result[1] == nil then
                MySQL.Async.execute('INSERT INTO ak4y_donatesystem (citizenid, credit) VALUES (@citizenid, @credit)', {
                    ["@citizenid"] = xPlayer.identifier,
                    ["@credit"] = tonumber(choose[choose.randomNumber]),
                })
                TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..tonumber(choose[choose.randomNumber]).."Coins")
            else
                MySQL.Async.execute('UPDATE ak4y_donatesystem SET credit = @credit WHERE citizenid = @citizenid', {
                    ["@citizenid"] = xPlayer.identifier,
                    ["@credit"] = result[1].credit + tonumber(choose[choose.randomNumber]),
                })
                TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..tonumber(choose[choose.randomNumber]).."Coins")
            end
        end)
    end
    exports.sCore:SendLogs(1752220,"Ouverture Caisse", "- Joueurs : "..GetPlayerName(source).."\n- License Joueurs : "..xPlayer.identifier.."\n- Reward : "..choose[choose.randomNumber].."","https://discord.com/api/webhooks/991058390627282974/O7gneiCxSmUobAB2EkN-qySvqwI1owXjV7qjxvEfyqo2yC3WvklzmqRDyTsFHUc__g7O")
end)

ESX.RegisterUsableItem('caisse_diamond', function(source)
    local source = source 
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('caisse_diamond', 1)
    local choose = {
        [1] = Caisse["caisse_diamond"]["money"][math.random(1,#Caisse["caisse_diamond"]["money"])],
        [2] = Caisse["caisse_diamond"]["weapon"][math.random(1,#Caisse["caisse_diamond"]["weapon"])],
        [3] = Caisse["caisse_diamond"]["coins"][math.random(1,#Caisse["caisse_diamond"]["coins"])],
        randomNumber = math.random(1,3)
    }
    if choose.randomNumber == 1 then 
        xPlayer.addAccountMoney('bank', choose[choose.randomNumber])
        TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..choose[choose.randomNumber].."$")
    elseif choose.randomNumber == 2 then
        xPlayer.addWeapon(choose[choose.randomNumber], 250)
        TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..choose[choose.randomNumber].." Avec 250 Munitions")
    elseif choose.randomNumber == 3 then 
        MySQL.Async.fetchAll('SELECT * FROM ak4y_donatesystem WHERE citizenid = @citizenid', {['@citizenid'] = xPlayer.identifier}, function(result)
            if result[1] == nil then
                MySQL.Async.execute('INSERT INTO ak4y_donatesystem (citizenid, credit) VALUES (@citizenid, @credit)', {
                    ["@citizenid"] = xPlayer.identifier,
                    ["@credit"] = tonumber(choose[choose.randomNumber]),
                })
                TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..tonumber(choose[choose.randomNumber]).."Coins")
            else
                MySQL.Async.execute('UPDATE ak4y_donatesystem SET credit = @credit WHERE citizenid = @citizenid', {
                    ["@citizenid"] = xPlayer.identifier,
                    ["@credit"] = result[1].credit + tonumber(choose[choose.randomNumber]),
                })
                TriggerClientEvent('RUN_SHARED_esx:showNotification', source, "Vous avez win "..tonumber(choose[choose.randomNumber]).."Coins")
            end
        end)
    end
    exports.sCore:SendLogs(1752220,"Ouverture Caisse", "- Joueurs : "..GetPlayerName(source).."\n- License Joueurs : "..xPlayer.identifier.."\n- Reward : "..choose[choose.randomNumber].."","https://discord.com/api/webhooks/991058390627282974/O7gneiCxSmUobAB2EkN-qySvqwI1owXjV7qjxvEfyqo2yC3WvklzmqRDyTsFHUc__g7O")
end)