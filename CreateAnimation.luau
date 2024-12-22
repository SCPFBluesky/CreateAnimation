--!strict
--!native

local self = {}
local player = game:GetService("Players").LocalPlayer

@native function self.new(Animator: Animator, AnimationID: number)
	assert(Animator, "Animator is nil!")
	assert(AnimationID, "Attempt to call CreateAnimation with missing AnimationID!")
	
	local char = player.Character or player.CharacterAdded:Wait()

	if not char or not Animator.Parent or Animator.Parent ~= char:FindFirstChild("Humanoid") then
		return;
	end;
	
	local NewAnimation = Instance.new("Animation")
	NewAnimation.AnimationId = "rbxassetid://"..AnimationID
	local LoadedAnimation = Animator:LoadAnimation(NewAnimation)
	
	return LoadedAnimation;
end;

return self;
