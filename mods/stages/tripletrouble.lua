function onCreate()
	-- background shit
	makeLuaSprite('Glitch', 'Glitch', -621.1, -395.65);
	setScrollFactor('Glitch', 0.9, 0.1);
	addLuaSprite('Glitch', false);

	makeLuaSprite('Trees2', 'Trees2', -623.5, -410.4);
	setScrollFactor('Trees2', 1, 1);
	addLuaSprite('Trees2', false);


	makeLuaSprite('Trees', 'Trees', -607.35, -401.55);
	setScrollFactor('Trees', 0.95, 1);
	addLuaSprite('Trees', false);


	makeLuaSprite('Grass', 'Grass', -630.4, -266);
	setScrollFactor('Grass', 1.1, 1);
	addLuaSprite('Grass', false);





	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end