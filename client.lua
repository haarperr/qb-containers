

local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
  }
  
  QBCore = nil 
  
  Citizen.CreateThread(function()
      while QBCore == nil do
          TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
          Citizen.Wait(0)
      end
      
      while QBCore.Functions.GetPlayerData().job == nil do
          Citizen.Wait(0)
      end
      PlayerData = QBCore.Functions.GetPlayerData()
      --startpoint()
  end)
  

  RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
  AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
      QBCore.Functions.GetPlayerData(function(PlayerData)
          PlayerJob = PlayerData.job
          PlayerData = QBCore.Functions.GetPlayerData()
      end)
     -- startpoint()
  end)
  RegisterNetEvent('QBCore:Client:OnJobUpdate')
  AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
   
      PlayerData.job = JobInfo
     
  end)
  
  local CurrentDocks = nil
  local currenxpoint

  local sellX4 = 1048.11
  local sellY4 = -3048.32
  local sellZ4 = 5.9

  local sellXa4 = 1047.79 
  local sellYa4 = -3044.92
  local sellZa4 = 5.9
  local proprieta 

  local sellXas4 = 1047.99  
  local sellYas4 = -3041.38
  local sellZas4 = 5.9
  local vendita 

  local sellX5 = 1062.1
  local sellY5 = -3031.96
  local sellZ5 = 5.9

  local sellXa5 = 1062.26 
  local sellYa5 = -3029.05
  local sellZa5 = 5.9
  local proprieta2 

  local sellXas5= 1062.01  
  local sellYas5 = -3025.27
  local sellZas5 = 5.9
  local vendita 

  local sellX6 = 1048.08
  local sellY6 = -3029.01
  local sellZ6 = 5.9

  local sellXa6 = 1048.0 
  local sellYa6 = -3025.53
  local sellZa6 = 5.9
  local proprieta3 

  local sellXas6= 1047.95  
  local sellYas6 = -3021.92
  local sellZas6 = 5.9
  local vendita 

  local sellX7 = 1033.88
  local sellY7 = -3031.86
  local sellZ7 = 5.9

  local sellXa7 = 1033.9 
  local sellYa7 = -3027.45
  local sellZa7 = 5.9
  local proprieta3 

  local sellXas7= 1033.89  
  local sellYas7 = -3021.64
  local sellZas7 = 5.9
  local vendita 

  local sellX8 = 1019.77
  local sellY8 = -3031.2
  local sellZ8 = 5.9

  local sellXa8 = 1019.89 
  local sellYa8 = -3026.71
  local sellZa8 = 5.9
  local proprieta3 

  local sellXas8= 1019.92 
  local sellYas8 = -3021.41
  local sellZas8 = 5.9
  local vendita 

  local blips = {
      {title="Contentor", colour=17, id=478, x = 1047.79, y = -3044.92, z = 5.9},
      {title="Contentor", colour=17, id=478, x = 1063.09, y = -3028.73, z = 5.9},
      {title="Contentor", colour=17, id=478, x = 1048.21, y = -3021.46, z = 5.9},
      {title="Contentor", colour=17, id=478, x = 1034.32, y = -3025.79, z = 5.9},
      {title="Contentor", colour=17, id=478, x = 1019.75, y = -3026.08, z = 5.9}
  }
  
  
  Citizen.CreateThread(function()
      for _, info in pairs(blips) do
          info.blip = AddBlipForCoord(info.x, info.y, info.z)
          SetBlipSprite(info.blip, info.id)
          SetBlipDisplay(info.blip, 4)
          SetBlipScale(info.blip, 0.5)
          SetBlipColour(info.blip, info.colour)
          SetBlipAsShortRange(info.blip, true)
          BeginTextCommandSetBlipName("STRING")
          AddTextComponentString(info.title)
          EndTextCommandSetBlipName(info.blip)
      end
  end) 


  Citizen.CreateThread(function()
      while true do
          local jordann = 1000

  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellX4, sellY4, sellZ4)
        
         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()
  

  
          if dist <= 10.0 then
          jordann = 1
              --DrawMarker(25, sellX4, sellY4, sellZ4-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(29, sellX4, sellY4, sellZ4 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 15, 255, 55, 255, true, false, false, true, false, false, false)   
          end     

          if dist <= 1.0 then
  
              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
              else

                  DrawText3D2(sellX4, sellY4, sellZ4+0.1,'~g~[E]~w~ Comprar Contentor [900000-€]')

                  if IsControlJustPressed(0, Keys['E']) then 
                 
                  
                  
                  QBCore.Functions.TriggerCallback("leggo:server:porcaccio", function(liberom)
                      --local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(liberom) do
                          currenxpoint = v.libero
                          
                          if currenxpoint == 'si' then
                           
                          -- QBCore.Functions.Notify('Purchased', "success", 7000)             
                           TriggerServerEvent('magazzino:acquisto')
                                    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Contentor ocupado', "error", 7000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	
                 
              end
          
          end
          Citizen.Wait(jordann)	
      end
  end)
  
  Citizen.CreateThread(function()
      while true do
          local jordann = 1000

  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          ---local distanza marker 1----------------------
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellXa4, sellYa4, sellZa4)
        
          ---end local distanza marker 1------------------
         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()
  
  
          if dist <= 10.0 then
          jordann = 1
              DrawMarker(25, sellXa4, sellYa4, sellZa4-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(22, sellXa4, sellYa4, sellZa4 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 15, 255, 55, 255, true, false, false, true, false, false, false)
          end
              
          if dist <= 1.0 then
  
              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
              else

                  DrawText3D2(sellXa4, sellYa4, sellZa4+0.1,'~g~[E]~w~ Abrir Contentor')

                  if IsControlJustPressed(0, Keys['E']) then 
                 
                
                  QBCore.Functions.TriggerCallback("leggo:server:proprieta", function(proprie)
                      local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(proprie) do
                          proprieta = v.magazzino
                          
                          if proprieta == 'si' then

                          TriggerEvent("inventory:client:SetCurrentStash", "magazzino")
                          TriggerServerEvent("inventory:server:OpenInventory", "stash", "magazzino", {
                              maxweight = 4000000,
                              slots = 500,
                          })    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Não é o seu contentor Fechado!', "error", 5000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	
                 
              end
          
          end
          Citizen.Wait(jordann)	
  
      end
      
  end)
  
  
  
  Citizen.CreateThread(function()
      while true do
          local jordann = 1000
  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellXas4, sellYas4, sellZas4)
        
         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()
  
          if dist <= 10.0 then
          jordann = 1
              --DrawMarker(25, sellXas4, sellYas4, sellZas4-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(29, sellXas4, sellYas4, sellZas4 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 255, 0, 0, 255, true, false, false, true, false, false, false)
          end
              
          if dist <= 1.0 then
  

              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
              else

                  DrawText3D2(sellXas4, sellYas4, sellZas4+0.1,'~g~[E]~w~ Vender Contentor')

                  if IsControlJustPressed(0, Keys['E']) then 
                 
                  
                  QBCore.Functions.TriggerCallback("leggo:server:porcaccio", function(liberom)
                      --local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(liberom) do
                          currenxpoint = v.libero
                          
                          if currenxpoint == 'no' then
                              QBCore.Functions.TriggerCallback("leggo:server:proprieta", function(proprie)
                                  local ped = GetPlayerPed(-1);
                                  
                                  for k, v in pairs(proprie) do
                                      proprieta = v.magazzino
                                     
                                      if proprieta == 'si' then
                                       TriggerServerEvent('magazzino:vendita')     
                                    
                                      else
                                       QBCore.Functions.Notify('Não é o seu contentor!', "error", 5000)
                                      end
                                   
                                  end
                             
                                   
                               end, CurrentDocks)
                                    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Não pode vender não é o seu contentor', "error", 5000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	

                 
              end
          
          end
          Citizen.Wait(jordann)	
  
      end
  end)
  
  Citizen.CreateThread(function()
      while true do
          local jordann = 1000
  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)

          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellX5, sellY5, sellZ5)
        
         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()
  
  
          if dist <= 10.0 then
          jordann = 1
              --DrawMarker(25, sellX4, sellY4, sellZ4-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(29, sellX5, sellY5, sellZ5 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 15, 255, 55, 255, true, false, false, true, false, false, false)
          end
              
          if dist <= 1.0 then
  

              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then

              else

  

                  DrawText3D2(sellX5, sellY5, sellZ5+0.1,'~g~[E]~w~ Comprar Contentor [900000-€]')

                  if IsControlJustPressed(0, Keys['E']) then 
                 
                  
                  
                  QBCore.Functions.TriggerCallback("leggo:server:porcaccio2", function(liberom)
                      --local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(liberom) do
                          currenxpoint = v.libero
                          
                          if currenxpoint == 'si' then
                           
                           TriggerServerEvent('magazzino:acquisto2')
                                    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Contentor ocupado', "error", 5000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	
                 
              end
          
          end
          Citizen.Wait(jordann)	
  
      end

  end)
  
  Citizen.CreateThread(function()
      while true do
          local jordann = 1000
  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellXa5, sellYa5, sellZa5)
         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()
  

  
          if dist <= 10.0 then
              jordann = 1
              DrawMarker(25, sellXa5, sellYa5, sellZa5-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(22, sellXa5, sellYa5, sellZa5 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 15, 255, 55, 255, true, false, false, true, false, false, false)
          end
              
          if dist <= 1.0 then
  
              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
              else

                  DrawText3D2(sellXa5, sellYa5, sellZa5+0.1,'~g~[E]~w~ Contentor Aberto')

                  if IsControlJustPressed(0, Keys['E']) then 
                 
                  
                  QBCore.Functions.TriggerCallback("leggo:server:proprieta2", function(proprie)
                      local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(proprie) do
                          proprieta = v.magazzino2
                          
                          if proprieta == 'si' then

                          TriggerEvent("inventory:client:SetCurrentStash", "magazzino2")
                          TriggerServerEvent("inventory:server:OpenInventory", "stash", "magazzino2", {
                              maxweight = 4000000,
                              slots = 500,
                          })    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Não é o seu contentor Fechado!', "error", 5000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	
                 
              end
          
          end
          Citizen.Wait(jordann)	
  
      end

  end)
  
  Citizen.CreateThread(function()
      while true do
          local jordann = 1000
  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellXas5, sellYas5, sellZas5)
        
         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()
  
  
          if dist <= 10.0 then
          jordann = 1
              --DrawMarker(25, sellXas4, sellYas4, sellZas4-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(29, sellXas5, sellYas5, sellZas5 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 255, 0, 0, 255, true, false, false, true, false, false, false)
          end
              
          if dist <= 1.0 then
  
              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then

              else
  
                  DrawText3D2(sellXas5, sellYas5, sellZas5+0.1,'~g~[E]~w~ Vender Contentores2')

                  if IsControlJustPressed(0, Keys['E']) then 
                 
                  
                  QBCore.Functions.TriggerCallback("leggo:server:porcaccio2", function(liberom)
                      --local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(liberom) do
                          currenxpoint = v.libero
                          
                          if currenxpoint == 'no' then
                              QBCore.Functions.TriggerCallback("leggo:server:proprieta2", function(proprie)
                                  local ped = GetPlayerPed(-1);
                                  
                                  for k, v in pairs(proprie) do
                                      proprieta = v.magazzino2 
                                     
                                      if proprieta == 'si' then
                                       TriggerServerEvent('magazzino:vendita2')     
                                    
                                      else
                                       QBCore.Functions.Notify('Não é o seu contentor!', "error", 5000)
                                      end
                                   
                                  end
                             
                                   
                               end, CurrentDocks)
                                    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Não pode vendê-lo não é o seu Recipiente', "error", 5000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	
                 
              end
          
          end
          Citizen.Wait(jordann)	
  
      end

  end)
  
  Citizen.CreateThread(function()
      while true do
          local jordann = 1000
  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellX6, sellY6, sellZ6)
        
         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()

  
          if dist <= 10.0 then
          jordann = 1
              --DrawMarker(25, sellX4, sellY4, sellZ4-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(29, sellX6, sellY6, sellZ6 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 15, 255, 55, 255, true, false, false, true, false, false, false)
          end
              
          if dist <= 1.0 then
  
              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
              else
  
                  DrawText3D2(sellX6, sellY6, sellZ6+0.1,'~g~[E]~w~ Comprar Contentor3 [900000-€]')

                  if IsControlJustPressed(0, Keys['E']) then 
                 
                  
                  
                  QBCore.Functions.TriggerCallback("leggo:server:porcaccio3", function(liberom)
                      --local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(liberom) do
                          currenxpoint = v.libero
                          
                          if currenxpoint == 'si' then
                           

                           TriggerServerEvent('magazzino:acquisto3')
                                    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Contentor ocupado', "error", 5000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	

                 
              end
          
          end
          Citizen.Wait(jordann)	
  
      end
  end)
  
  Citizen.CreateThread(function()
      while true do
          local jordann = 1000
  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellXa6, sellYa6, sellZa6)
        
         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()
  
        
  
          if dist <= 10.0 then
              jordann = 1
              DrawMarker(25, sellXa6, sellYa6, sellZa6-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(22, sellXa6, sellYa6, sellZa6 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 15, 255, 55, 255, true, false, false, true, false, false, false)
          end
              
          if dist <= 1.0 then
  
              
              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
                
              else

                  DrawText3D2(sellXa6, sellYa6, sellZa6+0.1,'~g~[E]~w~ Contentor aberto')

                  if IsControlJustPressed(0, Keys['E']) then 
                 
                  
                  QBCore.Functions.TriggerCallback("leggo:server:proprieta3", function(proprie)
                      local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(proprie) do
                          proprieta = v.magazzino3
                          
                          if proprieta == 'si' then
                          TriggerEvent("inventory:client:SetCurrentStash", "magazzino3")
                          TriggerServerEvent("inventory:server:OpenInventory", "stash", "magazzino3", {
                              maxweight = 4000000,
                              slots = 500,
                          })    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Não é o seu contentor Fechado!', "error", 5000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	

                 
              end
          
          end
          Citizen.Wait(jordann)	
  
      end
  end)
  
  

  
  Citizen.CreateThread(function()
      while true do
          local jordann = 1000
  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellXas6, sellYas6, sellZas6)
        
         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()
  
        
  
          if dist <= 10.0 then
          jordann = 1
              --DrawMarker(25, sellXas4, sellYas4, sellZas4-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(29, sellXas6, sellYas6, sellZas6 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 255, 0, 0, 255, true, false, false, true, false, false, false)
          end

          if dist <= 1.0 then
  
              
              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then

              else

                  DrawText3D2(sellXas6, sellYas6, sellZas6+0.1,'~g~[E]~w~ Vender Contentor')

                  if IsControlJustPressed(0, Keys['E']) then 
                 
                  

                  QBCore.Functions.TriggerCallback("leggo:server:porcaccio3", function(liberom)
                      --local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(liberom) do
                          currenxpoint = v.libero
                          
                          if currenxpoint == 'no' then
                              QBCore.Functions.TriggerCallback("leggo:server:proprieta3", function(proprie)
                                  local ped = GetPlayerPed(-1);
                                  
                                  for k, v in pairs(proprie) do
                                      proprieta = v.magazzino3 
                                     
                                      if proprieta == 'si' then
                                       TriggerServerEvent('magazzino:vendita3')
         
                                    
                                      else
                                       QBCore.Functions.Notify('Não é o seu contentor!', "error", 5000)
                                      end
                                   
                                  end
                             
                                   
                               end, CurrentDocks)
                                    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Não pode vender não é o seu contentor', "error", 5000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	
                 
              end
          
          end
          Citizen.Wait(jordann)	
  
      end
  end)
  

  Citizen.CreateThread(function()
      while true do
          local jordann = 1000
  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellX7, sellY7, sellZ7)
    
         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()
  
        
  
          if dist <= 10.0 then
          jordann = 1
              --DrawMarker(25, sellX4, sellY4, sellZ4-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(29, sellX7, sellY7, sellZ7 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 15, 255, 55, 255, true, false, false, true, false, false, false)
          end

          if dist <= 1.0 then
  
              
              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
              else

                  DrawText3D2(sellX7, sellY7, sellZ7+0.1,'~g~[E]~w~ Comprar Contentor4 [900000-€]')

                  if IsControlJustPressed(0, Keys['E']) then 
                 
                  
                  
                  QBCore.Functions.TriggerCallback("leggo:server:porcaccio4", function(liberom)
                      --local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(liberom) do
                          currenxpoint = v.libero
                          
                          if currenxpoint == 'si' then
                           
                           TriggerServerEvent('magazzino:acquisto4')
                                    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Contentor ocupado', "error", 5000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	
                 
              end
          
          end
          Citizen.Wait(jordann)	
  
      end
  end)
  
  Citizen.CreateThread(function()
      while true do
          local jordann = 1000
  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellXa7, sellYa7, sellZa7)
        
         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()
  
        
  
          if dist <= 10.0 then
          jordann = 1          
              DrawMarker(25, sellXa7, sellYa7, sellZa7-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(22, sellXa7, sellYa7, sellZa7 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 15, 255, 55, 255, true, false, false, true, false, false, false)
          end
              
          if dist <= 1.0 then
  
              
              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
              else
                  DrawText3D2(sellXa7, sellYa7, sellZa7+0.1,'~g~[E]~w~ Contentor Aberto')

                  if IsControlJustPressed(0, Keys['E']) then 

                  QBCore.Functions.TriggerCallback("leggo:server:proprieta4", function(proprie)
                      local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(proprie) do
                          proprieta = v.magazzino4
                          
                          if proprieta == 'si' then

                          TriggerEvent("inventory:client:SetCurrentStash", "magazzino4")
                          TriggerServerEvent("inventory:server:OpenInventory", "stash", "magazzino4", {
                              maxweight = 4000000,
                              slots = 500,
                          })    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Não é o seu contentor Fechado!', "error", 5000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	
                 
              end
          
          end
          Citizen.Wait(jordann)	
  
      end
  end)
  
  Citizen.CreateThread(function()
      while true do
          local jordann = 1000
  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellXas7, sellYas7, sellZas7)
        
         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()
  
        
  
          if dist <= 10.0 then
          jordann = 1
              --DrawMarker(25, sellXas4, sellYas4, sellZas4-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(29, sellXas7, sellYas7, sellZas7 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 255, 0, 0, 255, true, false, false, true, false, false, false)
          end

          if dist <= 1.0 then
  
              
              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
              else

                  DrawText3D2(sellXas7, sellYas7, sellZas7+0.1,'~g~[E]~w~ Vender Contentor')

                  if IsControlJustPressed(0, Keys['E']) then 
                 
                  
                  QBCore.Functions.TriggerCallback("leggo:server:porcaccio4", function(liberom)
                      --local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(liberom) do
                          currenxpoint = v.libero
                          
                          if currenxpoint == 'no' then
                              QBCore.Functions.TriggerCallback("leggo:server:proprieta4", function(proprie)
                                  local ped = GetPlayerPed(-1);
                                  
                                  for k, v in pairs(proprie) do
                                      proprieta = v.magazzino4 
                                     
                                      if proprieta == 'si' then

                                       TriggerServerEvent('magazzino:vendita4')         
                                    
                                      else
                                       QBCore.Functions.Notify('Não é o seu Container!', "error", 5000)
                                      end
                                   
                                  end
                             
                                   
                               end, CurrentDocks)
                                    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Não pode vendê-lo não é o seu Contentor', "error", 5000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	
                 
              end
          
          end
          Citizen.Wait(jordann)	
  
      end
  end)
  

  Citizen.CreateThread(function()
      while true do
      local jordann = 1000
  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)

          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellX8, sellY8, sellZ8)

         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()
  
        
  
          if dist <= 10.0 then
          jordann = 1
              --DrawMarker(25, sellX4, sellY4, sellZ4-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(29, sellX8, sellY8, sellZ8 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 15, 255, 55, 255, true, false, false, true, false, false, false)
          end

          if dist <= 1.0 then
  
              
              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
              else

                  DrawText3D2(sellX8, sellY8, sellZ8+0.1,'~g~[E]~w~ Comprar Contentor5 [900000-€]')

                  if IsControlJustPressed(0, Keys['E']) then 
                 
                  
                  
                  QBCore.Functions.TriggerCallback("leggo:server:porcaccio5", function(liberom)
                      --local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(liberom) do
                          currenxpoint = v.libero
                          
                          if currenxpoint == 'si' then
                           
                           TriggerServerEvent('magazzino:acquisto5')
                                    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Contentor Ocupado', "error", 5000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	

                 
              end
          
          end
          Citizen.Wait(jordann)	
  
      end
  end)
  
  
  
  Citizen.CreateThread(function()
      while true do
          local jordann = 1000
  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellXa8, sellYa8, sellZa8)
        
         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()
  
        
  
          if dist <= 10.0 then
          jordann = 1
              DrawMarker(25, sellXa8, sellYa8, sellZa8-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(22, sellXa8, sellYa8, sellZa8 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 15, 255, 55, 255, true, false, false, true, false, false, false)
          end
              
          if dist <= 1.0 then
  
              
              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then
              else

                  DrawText3D2(sellXa8, sellYa8, sellZa8+0.1,'~g~[E]~w~ Contentor Aberto')
                  if IsControlJustPressed(0, Keys['E']) then 
                 
                  

                  QBCore.Functions.TriggerCallback("leggo:server:proprieta5", function(proprie)
                      local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(proprie) do
                          proprieta = v.magazzino5
                          
                          if proprieta == 'si' then
                          TriggerEvent("inventory:client:SetCurrentStash", "magazzino5")
                          TriggerServerEvent("inventory:server:OpenInventory", "stash", "magazzino5", {
                              maxweight = 4000000,
                              slots = 500,
                          })    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Não é o seu contentor Fechado!', "error", 5000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	

                 
              end
          
          end
          Citizen.Wait(jordann)	
  
      end
  end)
  
  Citizen.CreateThread(function()
      while true do
          local jordann = 1000
  
          local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)

          local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, sellXas8, sellYas8, sellZas8)
        
         
          local vehicled = GetVehiclePedIsIn(GetPlayerPed(-1), true)
          local playerPeds = PlayerPedId()
  
        
  
          if dist <= 10.0 then
          jordann = 1
              --DrawMarker(25, sellXas4, sellYas4, sellZas4-0.96, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 200, 0, 0, 0, 0)
              DrawMarker(29, sellXas8, sellYas8, sellZas8 + 0.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.7, 0.6, 0.7, 255, 0, 0, 255, true, false, false, true, false, false, false)
          end
              
          if dist <= 1.0 then
  
              
              if GetPedInVehicleSeat(vehicled, -1) == GetPlayerPed(-1) then

              else

                  DrawText3D2(sellXas8, sellYas8, sellZas8+0.1,'~g~[E]~w~ Vender Contentor')

                  if IsControlJustPressed(0, Keys['E']) then 
                 
                  
                  QBCore.Functions.TriggerCallback("leggo:server:porcaccio5", function(liberom)
                      --local ped = GetPlayerPed(-1);
                      
                      for k, v in pairs(liberom) do
                          currenxpoint = v.libero
                          
                          if currenxpoint == 'no' then
                              QBCore.Functions.TriggerCallback("leggo:server:proprieta5", function(proprie)
                                  local ped = GetPlayerPed(-1);
                                  
                                  for k, v in pairs(proprie) do
                                      proprieta = v.magazzino5  
                                     
                                      if proprieta == 'si' then
                                       TriggerServerEvent('magazzino:vendita5')

                                      else
                                       QBCore.Functions.Notify('Não é o seu Contentor!', "error", 5000)
                                      end
                                   
                                  end
                             
                                   
                               end, CurrentDocks)
                                    
                                                      
                        
                          else
                           QBCore.Functions.Notify('Não pode vender não é o seu contentor', "error", 5000)
                          end
                       
                      end
                 
                       
                   end, CurrentDocks)
                     
                    
  
                  end	

                 
              end
          
          end
          Citizen.Wait(jordann)	
  
      end
  end)
  
  function hintToDisplay(text)
      SetTextComponentFormat("STRING")
      AddTextComponentString(text)
      DisplayHelpTextFromStringLabel(0, 0, 1, -1)
  end
  
  function DrawText3D2(x, y, z, text)
    
      local onScreen,_x,_y=World3dToScreen2d(x, y, z)
      local px,py,pz=table.unpack(GetGameplayCamCoords())
      SetTextScale(0.35, 0.35)
      SetTextFont(4)
      SetTextProportional(1)
      SetTextColour(255, 255, 255, 215)
      SetTextEntry("STRING")
      SetTextCentre(1)
      AddTextComponentString(text)
      DrawText(_x,_y)
      local factor = (string.len(text)) / 370
      DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 90)
  end
