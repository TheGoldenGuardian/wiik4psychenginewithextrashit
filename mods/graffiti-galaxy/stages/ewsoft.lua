function onCreate()
	-- background stuff
	makeLuaSprite('ewsoft', 'ewsoft', -760, -200);

	-- makeAnimatedLuaSprite('galaxyanimated','thebois_assets',-330,155)addAnimationByPrefix('galaxyanimated','dance','the bois',26,true)
	-- objectPlayAnimation('galaxyanimated','dance',false)
	-- setScrollFactor('galaxyanimated', 0.9, 0.9);

	addLuaSprite('ewsoft', false);
	-- addLuaSprite('galaxyanimated', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end