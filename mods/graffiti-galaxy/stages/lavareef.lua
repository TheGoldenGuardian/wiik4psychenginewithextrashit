function onCreate()
	-- background shit
	makeLuaSprite('cave', 'cave', -480, 20);
	setScrollFactor('cave', 0.8, 0.8);

	makeLuaSprite('pillar', 'pillar', 400, -100);
	setScrollFactor('pillar', 1, 1);

	makeLuaSprite('rocks', 'rocks', -75, 620);
	setScrollFactor('rocks', 1, 1);

	addLuaSprite('cave', false);
	addLuaSprite('pillar', false);
	addLuaSprite('rocks', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

