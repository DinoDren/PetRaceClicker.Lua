

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local OpPet = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local DupeOpPet = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local AutoSpeed = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
main.Position = UDim2.new(0.211817175, 0, 0.259036154, 0)
main.Size = UDim2.new(0, 387, 0, 198)
main.Active = true
main.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = main

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.Size = UDim2.new(0, 387, 0, 50)
Title.Font = Enum.Font.DenkOne
Title.Text = "Made By DINO#1390 | Pet Race Clicker"
Title.TextColor3 = Color3.fromRGB(255, 0, 4)
Title.TextSize = 20.000

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = Title

OpPet.Name = "OpPet"
OpPet.Parent = main
OpPet.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpPet.Position = UDim2.new(0.0361757092, 0, 0.318181813, 0)
OpPet.Size = UDim2.new(0, 167, 0, 50)
OpPet.Font = Enum.Font.DenkOne
OpPet.Text = "Get God Dominus (Best Pet)"
OpPet.TextColor3 = Color3.fromRGB(255, 0, 4)
OpPet.TextSize = 20.000
OpPet.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = OpPet

DupeOpPet.Name = "DupeOpPet"
DupeOpPet.Parent = main
DupeOpPet.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DupeOpPet.Position = UDim2.new(0.529715776, 0, 0.318181813, 0)
DupeOpPet.Size = UDim2.new(0, 167, 0, 50)
DupeOpPet.Font = Enum.Font.DenkOne
DupeOpPet.Text = "Dupe OP Pet"
DupeOpPet.TextColor3 = Color3.fromRGB(255, 0, 4)
DupeOpPet.TextSize = 20.000
DupeOpPet.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 12)
UICorner_4.Parent = DupeOpPet

AutoSpeed.Name = "AutoSpeed"
AutoSpeed.Parent = main
AutoSpeed.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoSpeed.Position = UDim2.new(0.284237742, 0, 0.636363626, 0)
AutoSpeed.Size = UDim2.new(0, 167, 0, 50)
AutoSpeed.Font = Enum.Font.DenkOne
AutoSpeed.Text = "AutoSpeed/Click"
AutoSpeed.TextColor3 = Color3.fromRGB(255, 0, 4)
AutoSpeed.TextSize = 20.000
AutoSpeed.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 12)
UICorner_5.Parent = AutoSpeed

-- Scripts:

local function LDHZG_fake_script() -- OpPet.LocalScript 
	local script = Instance.new('LocalScript', OpPet)

	script.Parent.MouseButton1Click:connect(function()
		local args = {
			[1] = "God Dominus"
		}
	
		game:GetService("ReplicatedStorage").Events.GiveStarterPet:InvokeServer(unpack(args))
	end)
	
end
coroutine.wrap(LDHZG_fake_script)()
local function WWQKEN_fake_script() -- DupeOpPet.LocalScript 
	local script = Instance.new('LocalScript', DupeOpPet)

	script.Parent.MouseButton1Click:connect(function()
		local plrs = game:GetService("Players")
		for i, v in pairs(plrs:GetChildren()) do
			local args = {
				[1] = "God Dominus"
			}
	
			game:GetService("ReplicatedStorage").Events.GiveStarterPet:InvokeServer(unpack(args))
		end
	end)
	
end
coroutine.wrap(WWQKEN_fake_script)()
local function FLRYX_fake_script() -- AutoSpeed.LocalScript 
	local script = Instance.new('LocalScript', AutoSpeed)

	script.Parent.MouseButton1Click:connect(function()
		while true do
			wait()
			game:GetService("ReplicatedStorage").Events.PlayerClicks:FireServer()
		end
	end)
	
end
coroutine.wrap(FLRYX_fake_script)()
