RegisterNetEvent('sendProximityMessage')
AddEventHandler('sendProximityMessage', function(id, name, message)
	local sid = GetPlayerServerId(id)
	if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), GetEntityCoords(GetPlayerPed(sid)), true) < 19.999 then
		TriggerEvent('chatMessage', name, {0, 255, 0}, message)
	end
end)
