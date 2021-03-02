
QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)


local Magaz1prezzo = 900000
local magaz1prezvendita = 600000

local Magaz2prezzo = 900000
local magaz2prezvendita = 600000

local Magaz3prezzo = 900000
local magaz3prezvendita = 600000

local Magaz4prezzo = 900000
local magaz4prezvendita = 600000

local Magaz5prezzo = 900000
local magaz5prezvendita = 600000


QBCore.Functions.CreateCallback('leggo:server:porcaccio', function(source, cb, dock)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    QBCore.Functions.ExecuteSql(false, "SELECT * FROM `magazzino` ", function(result)
        if result[1] ~= nil then
            cb(result)
        else
            cb(nil)
        end
    end)
end)


RegisterServerEvent('magazzino:acquisto')
AddEventHandler('magazzino:acquisto', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local magaz ='no'
    local magazi = 'si'
 
    local PlayerMoney = {
         bank = Player.PlayerData.money.bank,
    }
    local missingMoney = 0
  
    if PlayerMoney.bank >= Magaz1prezzo then
        Player.Functions.RemoveMoney('bank', Magaz1prezzo, "carking")

        QBCore.Functions.ExecuteSql(false, "UPDATE `magazzino` SET `libero` = '"..magaz.."'")

        QBCore.Functions.ExecuteSql(false, "UPDATE `players` SET `magazzino` = '"..magazi.."' WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'")
        TriggerClientEvent('QBCore:Notify', src, 'Compraste um contentor', "success", 8000)  
    else
        if PlayerMoney.bank > PlayerMoney.cash then
            missingMoney = (Magaz1prezzo - PlayerMoney.bank)
        
        end
        TriggerClientEvent('QBCore:Notify', src, 'Não tem dinheiro suficiente, faltam-lhe €'..missingMoney, 'error', 4000)
    end



     
        
end)


QBCore.Functions.CreateCallback('leggo:server:proprieta', function(source, cb, dock)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    QBCore.Functions.ExecuteSql(false, "SELECT * FROM `players` WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'", function(result)
        if result[1] ~= nil then
            cb(result)
        else
            cb(nil)
        end
    end)
end)


RegisterServerEvent('magazzino:vendita')
AddEventHandler('magazzino:vendita', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local magaz ='si'
    local magazi = 'no'
	    
     QBCore.Functions.ExecuteSql(false, "UPDATE `magazzino` SET `libero` = '"..magaz.."'")

     QBCore.Functions.ExecuteSql(false, "UPDATE `players` SET `magazzino` = '"..magazi.."' WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'")

     Player.Functions.AddMoney("cash", magaz1prezvendita, "sold-pawn-items")
	 TriggerClientEvent('QBCore:Notify', src, 'Vendeste o contentor', "success")  
        
end)


QBCore.Functions.CreateCallback('leggo:server:porcaccio2', function(source, cb, dock)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    QBCore.Functions.ExecuteSql(false, "SELECT * FROM `magazzino2` ", function(result)
        if result[1] ~= nil then
            cb(result)
        else
            cb(nil)
        end
    end)
end)


RegisterServerEvent('magazzino:acquisto2')
AddEventHandler('magazzino:acquisto2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local magaz ='no'
    local magazi = 'si'
    local PlayerMoney = {
         bank = Player.PlayerData.money.bank,
         cash = Player.PlayerData.money.cash,
    }
    local missingMoney = 0
  
    if PlayerMoney.bank >= Magaz2prezzo then
        Player.Functions.RemoveMoney('bank', Magaz2prezzo, "carking")

        QBCore.Functions.ExecuteSql(false, "UPDATE `magazzino2` SET `libero` = '"..magaz.."'")

        QBCore.Functions.ExecuteSql(false, "UPDATE `players` SET `magazzino2` = '"..magazi.."' WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'")
        TriggerClientEvent('QBCore:Notify', src, 'Compraste um contentor', "success", 8000)  
    else
        if PlayerMoney.bank > PlayerMoney.cash then
            missingMoney = (Magaz2prezzo - PlayerMoney.bank)
        
        end
        TriggerClientEvent('QBCore:Notify', src, 'Não tem dinheiro suficiente, faltam-lhe €'..missingMoney, 'error', 4000)
    end



     
        
end)

QBCore.Functions.CreateCallback('leggo:server:proprieta2', function(source, cb, dock)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    QBCore.Functions.ExecuteSql(false, "SELECT * FROM `players` WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'", function(result)
        if result[1] ~= nil then
            cb(result)
        else
            cb(nil)
        end
    end)
end)


RegisterServerEvent('magazzino:vendita2')
AddEventHandler('magazzino:vendita2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local magaz ='si'
    local magazi = 'no'
	    
     QBCore.Functions.ExecuteSql(false, "UPDATE `magazzino2` SET `libero` = '"..magaz.."'")

     QBCore.Functions.ExecuteSql(false, "UPDATE `players` SET `magazzino2` = '"..magazi.."' WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'")

     Player.Functions.AddMoney("cash", magaz2prezvendita, "sold-pawn-items")
	 TriggerClientEvent('QBCore:Notify', src, 'Vendeste o contentor', "success")  
        
end)


QBCore.Functions.CreateCallback('leggo:server:porcaccio3', function(source, cb, dock)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    QBCore.Functions.ExecuteSql(false, "SELECT * FROM `magazzino3` ", function(result)
        if result[1] ~= nil then
            cb(result)
        else
            cb(nil)
        end
    end)
end)


RegisterServerEvent('magazzino:acquisto3')
AddEventHandler('magazzino:acquisto3', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local magaz ='no'
    local magazi = 'si'

    local PlayerMoney = {
         bank = Player.PlayerData.money.bank,
         cash = Player.PlayerData.money.cash,
    }
    local missingMoney = 0
  
    if PlayerMoney.bank >= Magaz3prezzo then
        Player.Functions.RemoveMoney('bank', Magaz3prezzo, "carking")

        QBCore.Functions.ExecuteSql(false, "UPDATE `magazzino3` SET `libero` = '"..magaz.."'")

        QBCore.Functions.ExecuteSql(false, "UPDATE `players` SET `magazzino3` = '"..magazi.."' WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'")
        TriggerClientEvent('QBCore:Notify', src, 'Compraste um contentor', "success", 8000)  
    else
        if PlayerMoney.bank > PlayerMoney.cash then
            missingMoney = (Magaz3prezzo - PlayerMoney.bank)
        
        end
        TriggerClientEvent('QBCore:Notify', src, 'Não tem dinheiro suficiente, faltam-lhe €'..missingMoney, 'error', 4000)
    end



     
        
end)


QBCore.Functions.CreateCallback('leggo:server:proprieta3', function(source, cb, dock)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    QBCore.Functions.ExecuteSql(false, "SELECT * FROM `players` WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'", function(result)
        if result[1] ~= nil then
            cb(result)
        else
            cb(nil)
        end
    end)
end)


RegisterServerEvent('magazzino:vendita3')
AddEventHandler('magazzino:vendita3', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local magaz ='si'
    local magazi = 'no'
	    
     QBCore.Functions.ExecuteSql(false, "UPDATE `magazzino3` SET `libero` = '"..magaz.."'")

     QBCore.Functions.ExecuteSql(false, "UPDATE `players` SET `magazzino3` = '"..magazi.."' WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'")

     Player.Functions.AddMoney("cash", magaz3prezvendita, "sold-pawn-items")
	 TriggerClientEvent('QBCore:Notify', src, 'Vendeste o contentor', "success")  
        
end)


QBCore.Functions.CreateCallback('leggo:server:porcaccio4', function(source, cb, dock)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    QBCore.Functions.ExecuteSql(false, "SELECT * FROM `magazzino4` ", function(result)
        if result[1] ~= nil then
            cb(result)
        else
            cb(nil)
        end
    end)
end)


RegisterServerEvent('magazzino:acquisto4')
AddEventHandler('magazzino:acquisto4', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local magaz ='no'
    local magazi = 'si'
    local PlayerMoney = {
         bank = Player.PlayerData.money.bank,
         cash = Player.PlayerData.money.cash,
    }
    local missingMoney = 0
  
    if PlayerMoney.bank >= Magaz4prezzo then
        Player.Functions.RemoveMoney('bank', Magaz4prezzo, "carking")

        QBCore.Functions.ExecuteSql(false, "UPDATE `magazzino4` SET `libero` = '"..magaz.."'")

        QBCore.Functions.ExecuteSql(false, "UPDATE `players` SET `magazzino4` = '"..magazi.."' WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'")
        TriggerClientEvent('QBCore:Notify', src, 'Compraste um contentor', "success", 8000)  
    else
        if PlayerMoney.bank > PlayerMoney.cash then
            missingMoney = (Magaz4prezzo - PlayerMoney.bank)
        
        end
        TriggerClientEvent('QBCore:Notify', src, 'Não tem dinheiro suficiente, faltam-lhe €'..missingMoney, 'error', 4000)
    end



     
        
end)



QBCore.Functions.CreateCallback('leggo:server:proprieta4', function(source, cb, dock)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    QBCore.Functions.ExecuteSql(false, "SELECT * FROM `players` WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'", function(result)
        if result[1] ~= nil then
            cb(result)
        else
            cb(nil)
        end
    end)
end)



RegisterServerEvent('magazzino:vendita4')
AddEventHandler('magazzino:vendita4', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local magaz ='si'
    local magazi = 'no'
	    
     QBCore.Functions.ExecuteSql(false, "UPDATE `magazzino4` SET `libero` = '"..magaz.."'")

     QBCore.Functions.ExecuteSql(false, "UPDATE `players` SET `magazzino4` = '"..magazi.."' WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'")

     Player.Functions.AddMoney("cash", magaz4prezvendita, "sold-pawn-items")
	 TriggerClientEvent('QBCore:Notify', src, 'You sold', "success")  
        
end)



QBCore.Functions.CreateCallback('leggo:server:porcaccio5', function(source, cb, dock)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    QBCore.Functions.ExecuteSql(false, "SELECT * FROM `magazzino5` ", function(result)
        if result[1] ~= nil then
            cb(result)
        else
            cb(nil)
        end
    end)
end)



RegisterServerEvent('magazzino:acquisto5')
AddEventHandler('magazzino:acquisto5', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local magaz ='no'
    local magazi = 'si'

    local PlayerMoney = {
         bank = Player.PlayerData.money.bank,
         cash = Player.PlayerData.money.cash,
    }
    local missingMoney = 0
  
    if PlayerMoney.bank >= Magaz5prezzo then
        Player.Functions.RemoveMoney('bank', Magaz5prezzo, "carking")

        QBCore.Functions.ExecuteSql(false, "UPDATE `magazzino5` SET `libero` = '"..magaz.."'")

        QBCore.Functions.ExecuteSql(false, "UPDATE `players` SET `magazzino5` = '"..magazi.."' WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'")
        TriggerClientEvent('QBCore:Notify', src, 'Comprado', "success", 8000)  
    else
        if PlayerMoney.bank > PlayerMoney.cash then
            missingMoney = (Magaz5prezzo - PlayerMoney.bank)
        
        end
        TriggerClientEvent('QBCore:Notify', src, 'Não tem dinheiro suficiente, faltam-lhe €'..missingMoney, 'error', 4000)
    end



     
        
end)


QBCore.Functions.CreateCallback('leggo:server:proprieta5', function(source, cb, dock)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    QBCore.Functions.ExecuteSql(false, "SELECT * FROM `players` WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'", function(result)
        if result[1] ~= nil then
            cb(result)
        else
            cb(nil)
        end
    end)
end)



RegisterServerEvent('magazzino:vendita5')
AddEventHandler('magazzino:vendita5', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local magaz ='si'
    local magazi = 'no'
	    
     QBCore.Functions.ExecuteSql(false, "UPDATE `magazzino5` SET `libero` = '"..magaz.."'")

     QBCore.Functions.ExecuteSql(false, "UPDATE `players` SET `magazzino5` = '"..magazi.."' WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'")

     Player.Functions.AddMoney("cash", magaz5prezvendita, "sold-pawn-items")
	 TriggerClientEvent('QBCore:Notify', src, 'Vendeste o contentor', "success")  
        
end)