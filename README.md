## Create Animation
**A module designed to simplify animation creation for roblox games.**

## How To Use

## Main function.new()

| **Parameter** | **Type**   | **Description**                                                                                                               |
|---------------|------------|-------------------------------------------------------------------------------------------------------------------------------|
| `Animator`    | `Animator` | The Players Animator object in Humanoid.                                                                                                        |
| `ID`          | `AnimationID` | The ID of the animation you wish to load.                                                                                      |


## Example

```lua
local Player = game:GetService("Players").LocalPlayer
local Char = Player.Character or Player.CharacterAdded:Wait()
local Animator = Char:WaitForChild("Humanoid").Animator

local CreateAnimation = require(game:GetService("ReplicatedStorage").CreateAnimation)
local ExampleAnimation = CreateAnimation.new(Animator, 5837583478348)

print(ExampleAnimation) -- This will print "Animation"

print(ExampleAnimation.ClassName) -- This will print AnimationTrack
```

