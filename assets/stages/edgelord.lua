function onCreate()

	makeLuaSprite('TheVolcano', 'edgelord/volcano', -750, -100);
	addLuaSprite('TheVolcano',false);
	setLuaSpriteScrollFactor('TheVolcano', 0.9, 0.9);

	makeLuaSprite('TheDark','edgelord/dark',-400,-25)
	addLuaSprite('TheDark',false)
	setLuaSpriteScrollFactor('TheDark', 0.9, 0.9);

	makeLuaSprite('TheBG', 'edgelord/arenabg', -700, -80);
	addLuaSprite('TheBG',false);
	setLuaSpriteScrollFactor('TheBG', 0.9, 0.9);

	makeLuaSprite('TheBGnight', 'edgelord/arenabgnight', -700, -80);
	addLuaSprite('TheBGnight',false);
	setLuaSpriteScrollFactor('TheBGnight', 0.9, 0.9);

	makeLuaSprite('TheTko', 'edgelord/tko', -700, -50);
	addLuaSprite('TheTko',false);
	setLuaSpriteScrollFactor('TheTko', 0.9, 0.9);

	makeLuaSprite('TheArena', 'edgelord/arena', -630, 600);
	addLuaSprite('TheArena',false);
	setLuaSpriteScrollFactor('TheArena', 0.9, 0.9);

	makeLuaSprite('ThePlatform', 'edgelord/platform', -700, 70);
	addLuaSprite('ThePlatform',false);
	setLuaSpriteScrollFactor('ThePlatform', 0.9, 0.9);

	setProperty('TheVolcano.visible', false)
	setProperty('TheDark.visible', false)
	-- setProperty('TheArena.visible', false)
	setProperty('TheBG.visible', false)
	setProperty('TheBGnight.visible', false)
	setProperty('TheTko.visible', false)
	setProperty('ThePlatform.visible', false)
	close(true)
end