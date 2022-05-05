function onEvent(name,value1,value2)
	if name == 'Change BG' then 
		if value1 == 'bg' then
			setProperty('ewsoft.visible', false);
			setProperty('space_bg_back.visible', true);
			setProperty('galaxyanimated.visible', false);
			setProperty('space_bg_front.visible', true);
			setProperty('the_rock_that_bf_stands_on', true);
	        setProperty('TheTko.visible', false);
	        setProperty('ThePlatform.visible', false);
		end
		if value1 == 'bg1' then
			setProperty('TheVolcano.visible', true);
			setProperty('TheArena.visible', false);
			setProperty('TheDark.visible', false);
			setProperty('TheBG.visible', false);
			setProperty('TheBGnight.visible', false);
	        setProperty('TheTko.visible', false);
	        setProperty('ThePlatform.visible', false);
		end
		if value1 == 'bg2' then
			setProperty('TheVolcano.visible', false);
			setProperty('TheArena.visible', false);
			setProperty('TheDark.visible', true);
			setProperty('TheBG.visible', false);
			setProperty('TheBGnight.visible', false);
	        setProperty('TheTko.visible', false);
	        setProperty('ThePlatform.visible', false);
		end
		if value1 == 'bg3' then
			setProperty('TheVolcano.visible', false);
			setProperty('TheArena.visible', false);
			setProperty('TheDark.visible', false);
			setProperty('TheBG.visible', true);
			setProperty('TheBGnight.visible', false);
	        setProperty('TheTko.visible', false);
	        setProperty('ThePlatform.visible', false);
		end
		if value1 == 'bg4' then
			setProperty('TheVolcano.visible', false);
			setProperty('TheArena.visible', false);
			setProperty('TheDark.visible', false);
			setProperty('TheBG.visible', false);
			setProperty('TheBGnight.visible', true);
	        setProperty('TheTko.visible', false);
	        setProperty('ThePlatform.visible', false);
		end
		if value1 == 'bg5' then
			setProperty('TheVolcano.visible', false);
			setProperty('TheArena.visible', false);
			setProperty('TheDark.visible', false);
			setProperty('TheBG.visible', false);
			setProperty('TheBGnight.visible', false);
	        setProperty('TheTko.visible', false);
	        setProperty('ThePlatform.visible', true);
		end
		if value1 == 'bg6' then
			setProperty('TheVolcano.visible', false);
			setProperty('TheArena.visible', false);
			setProperty('TheDark.visible', false);
			setProperty('TheBG.visible', false);
			setProperty('TheBGnight.visible', false);
	        setProperty('TheTko.visible', true);
	        setProperty('ThePlatform.visible', false);
		end
		if value1 == 'charge' then
			setProperty('TheCharge.visible', true);
		end
		if value1 == 'off' then
			setProperty('TheCharge.visible', false);
		end
	end
end