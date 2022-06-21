ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
	     TriggerEvent('Esx:getSharedObject', function(obj) ESX = obj end)
		 Citizen.Wait(0)
	end
end)	

RegisterNetEvent('Handyvertrag:picturemsg')
AddEventHandler('Handyvertrag:picturemsg', function(icon, msg, title, subtitle)
      
	 showPictureNotification(icon, msg, title, subtitle)



end)

function showPictureNotification(icon, msg, title, subtitle)
     SetNotificationTextEntry("STRING")
	 AddTextComponentString(msg);
	 SetNotificationMessage(icon, icon, true, 1, title, subtitle);
	 DrawNotification(false, true);
end	 