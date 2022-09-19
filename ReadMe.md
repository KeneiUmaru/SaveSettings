spawn(function()
    while wait() do
        pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/KeneiUmaru/SaveSettings/main/SAVESETTINGS_API.lua'))()
        end)
    end
end)

local JSON = JsonEncode({abc='fff'})
JsonDecode(JSON)

getgenv().Config = {
    ["Farm"] = true,
    ["FastAttack"] = true,
}

getgenv().Check_Setting(getgenv().MyName)
getgenv().Get_Setting(getgenv().MyName)
getgenv().Update_Setting(getgenv().MyName)
