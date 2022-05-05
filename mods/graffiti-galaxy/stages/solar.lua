function onCreate()
	--background shit
	makeLuaSprite('space_bg_back', 'space_bg_back', -590, 10);
	setScrollFactor('space_bg_back', 1, 1);

	makeLuaSprite('the_rock_that_bf_stands_on', 'the_rock_that_bf_stands_on', 735, 725);
	setScrollFactor('the_rock_that_bf_stands_on', 1, 1);

	makeLuaSprite('space_bg_front', 'space_bg_front', -360, 8);
	setScrollFactor('space_bg_front', 0.9, 0.9);

	addLuaSprite('space_bg_back', false);
	addLuaSprite('space_bg_front', false);
	addLuaSprite('the_rock_that_bf_stands_on', false);

	makeLuaSprite('ewsoft', 'ewsoft', -760, -200);

	makeAnimatedLuaSprite('galaxyanimated','thebois_assets',-330,155)addAnimationByPrefix('galaxyanimated','dance','the bois',26,true)
	objectPlayAnimation('galaxyanimated','dance',false)
	setScrollFactor('galaxyanimated', 0.9, 0.9);

	addLuaSprite('ewsoft', false);
	addLuaSprite('galaxyanimated', true);

	setProperty('space_bg_back.visible.visible', false)
	setProperty('the_rock_that_bf_stands_on.visible', false)
	setProperty('space_bg_front.visible', false)
	setProperty('ewsoft.visible', false)
	setProperty('galaxyanimated.visible', false)
	close(true)
end