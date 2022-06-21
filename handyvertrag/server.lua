local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

Citizen.CreateThread(function()

    while true do
	
	for k, playerid in pairs(GetPlayers()) do
	local xPlayer = ESX.GetPlayerFromId(playerid)
	if xPlayer ~= nil then
		 
		     local redCount = xPlayer.getInventoryItem("red_phone").count
			 local blueCount = xPlayer.getInventoryItem("blue_phone").count
		     local goldCount = xPlayer.getInventoryItem("gold_phone").count
			 local blackCount = xPlayer.getInventoryItem("black_phone").count
		     local purpleCount = xPlayer.getInventoryItem("purple_phone").count
			 local greyCount = xPlayer.getInventoryItem("grey_phone").count 
			 local classicCount = xPlayer.getInventoryItem("classic_phone").count	
			 
			 if redCount > 0 or blueCount > 0 or goldCount > 0 or blackCount > 0 or purpleCount > 0 or greyCount > 0 or classicCount > 0 then
			 TriggerClientEvent('tax:sendTax', xPlayer.source, xPlayer.source, 'Handyvertrag', 300)
			
	      end	
	   end
    end
	   
	    Citizen.Wait(120 * 60000)
    end
	
end)	