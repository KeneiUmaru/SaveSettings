local JSON = JsonEncode({abc='fff'})
JsonDecode(JSON)

getgenv().Config = {
    ["Farm"] = true,
    ["FastAttack"] = true,
}

getgenv().Check_Setting(getgenv().MyName)
getgenv().Get_Setting(getgenv().MyName)
getgenv().Update_Setting(getgenv().MyName)
