    local Player = game.Players.LocalPlayer
    local ContextActionService = game:GetService("ContextActionService")
    
    local function ChangeWalkspeed(walkspeed)
        --first let's make sure the character and humanoid exists.
        local character = Player.Character
        if character ~= nil then
            local humanoid = character:FindFirstChild("Humanoid")
            if humanoid ~= nil then
                humanoid.WalkSpeed = walkspeed
            end
        end
    end
    
    local function SprintHandler(actionName,userInputState,inputObject)
        --this recieves parameters from contextactionservice that we could use.
        if userInputState == Enum.UserInputState.Begin then
            ChangeWalkspeed(25)
        elseif userInputState == Enum.UserInputState.End then
            ChangeWalkspeed(16)
        end
    end
    
    ContextActionService:BindAction("Sprint",SprintHandler,true,Enum.KeyCode.LeftShift)