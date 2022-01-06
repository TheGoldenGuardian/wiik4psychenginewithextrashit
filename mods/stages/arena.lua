function onCreate()
	-- background shit
	makeLuaSprite("theArena" , "arena-bg", -620, -300)
	addLuaSprite("theArena", false)
	close(true)

	makeAnimatedLuaSprite("Chars", "arena-characters", -600, 40)
	addAnimationByPrefix("Chars", "bop", "bg-characters", 24, true)
	addLuaSprite("Chars", false)
	objectPlayAnimation("Chars", "bop", false)
	close(true)

	makeLuaSprite("Rail", "railing", -630, 220)
	addLuaSprite("Rail", false)
	close(true)
	
end