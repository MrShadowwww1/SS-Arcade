RegisterNetEvent("d3-arcade:ticketResult")
AddEventHandler("d3-arcade:ticketResult", function(ticket)
    showNotification(_U("bought_ticket", ticket, Config.ticketPrice[ticket].time))

    -- Will set time player can be in arcade from Config
    seconds = 1
    minutes = Config.ticketPrice[ticket].time

    -- Tell the script that player has Ticket and can enter.
	exports['okokNotify']:Alert('Arcade', 'You have a Ticket you can now use the Computers', 5000, 'info', playSound)
    gotTicket = true
    CreateThread(TimerThread)
end)

RegisterNetEvent("d3-arcade:nomoney")
AddEventHandler("d3-arcade:nomoney", function()
    showNotification(_U("not_enough_money"))
end)

RegisterNetEvent('d3-arcade:exit', function()
    if usingComputer then
        SendNUIMessage({
            type = "off",
            game = "",
        })
        SetNuiFocus(false, false)
        local ped = PlayerPedId()
        EnableAllControlActions(0)
        EnableAllControlActions(1)
        EnableAllControlActions(2)
        FreezeEntityPosition(ped, false)
        ClearPedTasks(ped)
        usingComputer = false
    end
end)

RegisterNUICallback('exit', function()
    TriggerEvent('d3-arcade:exit')
end)