// English Language //
Commands remove weapons in client files
// Thai language //
ใช้คำสั่งลบอาวุธทั้งตัว เพิ่มฝั่ง client ไหนก็ได้

function deleteweapon()
    RemoveAllPedWeapons(PlayerPedId(), true)
    TriggerEvent('pNotify:SendNotification', {
        text = 'คุณได้ลบอาวุธทั้งหมดแล้ว',
        type = 'success',
        timeout = 3000,
        layout = 'bottomCenter',
        queue = 'global'
    })
end


RegisterCommand('delwp', function()
    deleteweapon()
end)
