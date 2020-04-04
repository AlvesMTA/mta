local taxi = createMarker(-710.34363, 960.78107, 11.40855, "cylinder", 1.0, 255, 255, 255, 255)
local destruir = createMarker(-729.81171, 970.34314, 11.35938, "cylinder", 1.0, 255, 255, 255, 255)

local Mark = {
    {-715.55462646484, 969.30456542969, 12.199524879456},
    {-721.65747070313, 962.44818115234, 12.169116020203},
    {-718.58477783203, 949.90478515625, 12.1328125},
}

veh = {}
function create_taxi(player)
    if veh[player] and isElement( veh[player] ) then destroyElement( veh[player] ) 
        veh[player] = nil 
end
    aleatorio = math.random(#Mark)
    veh[player] = createVehicle(420, Mark[aleatorio][1], Mark[aleatorio][2], Mark[aleatorio][3], 0, 0, 0)
    outputChatBox("Seu Veiculo Foi Spawnado", player, 255, 255, 255, true)
end
addCommandHandler("taxi", create_taxi)

veh = {}
function destruir_taxi(player,_,argumento)
    if veh[player] and isElement(veh[player]) then
        destroyElement(veh[player])
        veh = {}
	end
end
addEventHandler ("onMarkerHit", destruir, destruir_taxi)