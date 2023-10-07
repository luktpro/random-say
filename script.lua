local goofball = {
    "why do you need to grind when u can just afk?",
    "yes",
    "what abt it",
    "imagine talking to someone afk 🤯",
    "how do you care so much?",
    "just server hop bro 💀",
    "ikr its crazy aint it",
    "woow crazy right?",
    "its a lego game bro 💀"
}
local words = {"hacker", "hack", "exploiter"}
local logplr = function(plr)
    plr.Chatted:Connect(function(message)
        for i,v in pairs(words) do
            if v:match(message) then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(goofball[math.random(1,#goofball)], 'All');
            end
        end
    end)
end
for i,v in pairs(game.Players:GetPlayers()) do
    logplr(v)
end
game.Players.PlayerAdded:connect(function(plr)
    logplr(plr)
end)
