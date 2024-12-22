--!strict
--!native

local self = {}

@native function self.new(Animator: Animator, AnimationID: number)
	assert(Animator, "Animator is nil!")
	assert(AnimationID, "Attempt to call CreateAnimation with missing AnimationID!")
	
	local NewAnimation = Instance.new("Animation")
	NewAnimation.AnimationId = "rbxassetid://"..AnimationID
	local LoadedAnimation = Animator:LoadAnimation(NewAnimation)
	
	return LoadedAnimation;
end;

return self;
