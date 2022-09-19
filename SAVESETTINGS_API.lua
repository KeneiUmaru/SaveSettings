local getgenv().MyName = game.Players.LocalPlayer.DisplayName

local getgenv().JsonEncode = function(msg)
    return game:GetService("HttpService"):JSONEncode(msg)
end
local getgenv().JsonDecode = function(msg)
    return game:GetService("HttpService"):JSONDecode(msg)
end
local getgenv().Check_Setting = function(Name)
    if not isfolder('DaiNo') then
        makefolder('DaiNo')
    end
    if not isfile('DaiNo/'..Name..'_'..'Config.json') then
        writefile('DaiNo/'..Name..'_'..'Config.json',JsonEncode(getgenv().Config))
    end
end
local getgenv().Get_Setting = function(Name)
    if isfolder('Script') and isfile('DaiNo/'..Name..'_'..'Config.json') then
        getgenv().Setting = JsonDecode(readfile('DaiNo/'..Name..'_'..'Config.json'))
        return getgenv().Config
    else
        Check_Setting(Name)
    end
end
local getgenv().Update_Setting = function(Name)
    if isfolder('Script') and isfile('DaiNo/'..Name..'_'..'Config.json') then
        writefile('DaiNo/'..Name..'_'..'Config.json',JsonEncode(getgenv().Config))
    else
        Check_Setting(Name)
    end
end
