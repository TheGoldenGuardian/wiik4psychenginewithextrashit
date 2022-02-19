-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Add Overlay' then
		makeLuaSprite(value1, value2, -650, -300)
		setScrollFactor(value1, 0, 0);
		addLuaSprite(value1, true)
		setProperty(value1.alpha, 0);
		doTweenAlpha('overlayin', value1, 1, 1, 'linear');
	end
end