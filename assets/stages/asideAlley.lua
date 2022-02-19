function onCreate()
	-- background shit
	makeLuaSprite('back', 'alley/whittyBack', -600, -300);
	setScrollFactor('whittyBack', 1, 1);
	
	makeLuaSprite('front', 'alley/whittyFront', -650, 600);
	setScrollFactor('whittyFront', 1, 1);

	addLuaSprite('back', false);
	addLuaSprite('front', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end