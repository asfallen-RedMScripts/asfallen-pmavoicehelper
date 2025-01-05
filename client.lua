local currentRange = 5.0
local displayTimer = 0

local function DrawRangeIndicator()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    
    Citizen.InvokeNative(0x2A32FAA57B937173, 
        0x94FDAE17, 
        coords.x, 
        coords.y, 
        coords.z + Config.YOffset,
        0.0, 0.0, 0.0, 
        0.0, 0.0, 0.0, 
        currentRange * 2.0,
        currentRange * 2.0,
        0.25, 
        Config.Color.r,
        Config.Color.g,
        Config.Color.b,
        100,
        false,
        true,
        2,
        false,
        nil,
        nil,
        false
    )
end

AddEventHandler('pma-voice:setTalkingMode', function(newRange)
    currentRange = newRange
    displayTimer = GetGameTimer() + Config.DisplayTime
end)

CreateThread(function()
    while true do
        Wait(0)
        
        local currentTime = GetGameTimer()
        if currentTime < displayTimer then
            DrawRangeIndicator()
        end
    end
end) 