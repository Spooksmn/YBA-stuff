data = {
    Coins = math.huge,
    CoinsRecord = math.huge,
    Stars = math.huge,
    StarsRecord = math.huge,
    Skill = math.huge,
    SkillRecord = math.huge,
    Eggs = math.huge,
    Killstreak = math.huge,
    KillstreakRecord = math.huge,
    FirstPlayed = 0,
    LastRewardClaimed = 0,
    BossKills = math.huge,
    CoinBoost = math.huge,
    StarBoost = math.huge,
    LuckBoost = math.huge,
    TotalPlaytime = math.huge,
    Guns = {
        M1911 = true
    },
    CurrentGun = "M1911",
    Ranks = {
        Recruit = true
    },
    CurrentRank = "Recruit",
    Specializations = {
        Noob = true
    },
    CurrentSpecialization = "Noob",
    Elementals = {
        None = true
    },
    CurrentElemental = "None",
    Vehicles = {},
    Pets = {},
    Settings = {
        EffectsVolume = 5,
        MusicVolume = 5,
        UIVolume = 5,
        MaxSkillWarning = true,
        Popups = true,
        Shadows = false,
        Glass = true
    },
    Transactions = {},
    Gamepasses = {},
    Codes = {}
};



local lLocalPlayer1 = game:GetService("Players").LocalPlayer;
local lPlayerGui2 = lLocalPlayer1.PlayerGui;
local lcmain3 = lLocalPlayer1.PlayerScripts.Client.cmain;
local lClientModules4 = lcmain3.ClientModules;
local v5 = require(game:GetService("ReplicatedStorage").Main.UniversalModule.Universal);
local lsetvar6 = v5.setvar;
local lprinttable7 = v5.printtable;
local lReplicatedFirst8 = game:GetService("ReplicatedFirst");
local u1 = {};
local u2 = require(lcmain3.State);
local v9 = require(lcmain3):datum();
local lSignal10 = v9.Signal;
function u1.UpdateData(p2)
    u2.Data = p2;
    for v11, v12 in pairs(v9) do
        if v12.OnDataUpdate then
            v12.OnDataUpdate()
        end
    end
end

u1.UpdateData(data)
