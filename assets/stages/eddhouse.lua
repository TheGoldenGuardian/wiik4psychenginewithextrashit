function onCreate()
	-- background shit
	makeLuaSprite('sky', 'eddsworld/SkyBox', -1790, -800);
	setScrollFactor('sky', 0.1, 0.5);
	
	makeLuaSprite('cloud', 'eddsworld/Clouds', -2590, -500);
	setScrollFactor('cloud', 0.1, 0.3);
	setProperty('cloud.velocity.x', math.random(5, 15));
	
	makeLuaSprite('houses', 'eddsworld/HousesAndFloor', -1790, -600);
	setScrollFactor('houses', 1, 1);
	
	if not lowQuality then
		makeLuaSprite('city', 'eddsworld/SecondParalax', -1290, -500);
		setScrollFactor('city', 0.65, 0.65);
		scaleObject('city', 0.8, 0.8);
		
		makeLuaSprite('car', 'eddsworld/Car', -1790, -600);
		setScrollFactor('car', 1.15, 1.15);
	end
	
	makeLuaSprite('fence', 'eddsworld/Fence', -1790, -600);
	setScrollFactor('fence', 1, 1);

	addLuaSprite('sky', false); --bg
	addLuaSprite('cloud', false);
	addLuaSprite('city', false);
	addLuaSprite('houses', false);
	
	addLuaSprite('fence', false); --fence lol
	
	addLuaSprite('car', true);
end
