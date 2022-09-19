local JSON = JsonEncode({abc='fff'})
JsonDecode(JSON)

getgenv().Config = {
    ["Farm"] = true,
    ["FastAttack"] = true,
}

Check_Setting(getgenv().MyName)
Get_Setting(getgenv().MyName)
Update_Setting(getgenv().MyName)
