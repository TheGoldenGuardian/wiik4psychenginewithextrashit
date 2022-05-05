function onCreate()
	-- background shit
	makeLuaSprite('space_bg_back', 'space_bg_back', -590, 10);
	setScrollFactor('space_bg_back', 1, 1);

	makeLuaSprite('the_rock_that_bf_stands_on', 'the_rock_that_bf_stands_on', 735, 725);
	setScrollFactor('the_rock_that_bf_stands_on', 1, 1);


	makeLuaSprite('space_bg_front', 'space_bg_front', -360, 8);
	setScrollFactor('space_bg_front', 0.9, 0.9);

	addLuaSprite('space_bg_back', false);
	addLuaSprite('space_bg_front', false);
	addLuaSprite('the_rock_that_bf_stands_on', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

