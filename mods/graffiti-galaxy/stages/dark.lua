function onCreate()
	-- background shit
	makeLuaSprite('night', 'night', -310, -100);
	setScrollFactor('night', 0.9, 0.9);

	addLuaSprite('night', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end