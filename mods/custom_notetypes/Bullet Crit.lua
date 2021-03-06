function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bullet Crit' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'nevada/notes/Bullet_Note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0); --custom notesplash color, why not
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);
			setPropertyFromGroup('unspawnNotes', i, 'colorSwap.hue', -30); --custom note color so it doesnt fucking tint
			setPropertyFromGroup('unspawnNotes', i, 'colorSwap.saturation', 0);
			setPropertyFromGroup('unspawnNotes', i, 'colorSwap.brightness', 0);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let BF's notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

local shootAnims = {"LEFTshoot", "DOWNshoot", "UPshoot", "RIGHTshoot"}
local dodgeAnims = {"dodgeLEFT", "dodgeDOWN", "dodgeUP", "dodgeRIGHT"}
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Bullet Crit' then
		-- if difficulty == 1 then
			-- playSound('hankshoot', 0.3); -- was 0.5
		-- end
		if getProperty('dad.curCharacter') == 'hank' then
			characterPlayAnim('dad', shootAnims[direction + 1], true);
			playSound('hankshoot', 0.3); -- was 0.5
		elseif getProperty('dad.curCharacter') == 'hank-scared' then
			curDad = getProperty('dad.curCharacter');
			setProperty('dad.curCharacter', 'hank');
			characterPlayAnim('dad', shootAnims[direction + 1], true);
			runTimer('shootanim', 1, 1);
		else
			playSound('tf2pistolcrit', 0.3); -- was 0.5
		end
		setProperty('dad.specialAnim', true);
		-- if getProperty('bf.curCharacter') == 'bf-reanimated' then
			characterPlayAnim('boyfriend', dodgeAnims[direction + 1], true);
		-- else
			-- characterPlayAnim('boyfriend', 'dodge', true);
		-- end
		setProperty('boyfriend.specialAnim', true);
		cameraShake('camGame', 0.01, 0.2);
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Bullet Crit' then
		-- if difficulty == 1 then
			playSound('hankshoot', 0.3); -- was 0.5
		-- end
		if getProperty('dad.curCharacter') == 'hank' then
			characterPlayAnim('dad', shootAnims[direction + 1], true);
		elseif getProperty('dad.curCharacter') == 'hank-scared' then
			curDad = getProperty('dad.curCharacter');
			setProperty('dad.curCharacter', 'hank');
			characterPlayAnim('dad', shootAnims[direction + 1], true);
			runTimer('shootanim', 1, 1);
		end
		setProperty('dad.specialAnim', true);
		-- if getProperty('bf.curCharacter') == 'bf-reanimated' then
			characterPlayAnim('boyfriend', dodgeAnims[direction + 1], true);
		-- else
			-- characterPlayAnim('boyfriend', 'dodge', true);
		-- end
		setProperty('boyfriend.specialAnim', true);
		cameraShake('camGame', 0.01, 0.2);
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	-- if noteType == 'Bullet Note' and difficulty == 1 then
		-- setProperty('health', -1);
		-- playSound('hankshoot', 0.5);
	-- elseif noteType == 'Bullet Note' and difficulty == 0 then
	if noteType == 'Bullet Crit' then
		-- setProperty('health', getProperty('health')-40);
		setProperty('health', -1);
		-- runTimer('bleed', 10, 20);
		playSound('hankded', 0.6);
		playSound('hankshoot', 0.3); -- was 0.5
		characterPlayAnim('boyfriend', 'hurt', true);
		if getProperty('dad.curCharacter') == 'hank' then
			characterPlayAnim('dad', shootAnims[direction + 1], true);
		elseif getProperty('dad.curCharacter') == 'hank-scared' then
			curDad = getProperty('dad.curCharacter');
			setProperty('dad.curCharacter', 'hank');
			characterPlayAnim('dad', shootAnims[direction + 1], true);
			runTimer('shootanim', 1, 1);
		end
		setProperty('dad.specialAnim', true);
		cameraShake('camGame', 0.01, 0.2);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if tag == 'bleed' then
		setProperty('health', getProperty('health')-0.001);
	end
	if tag == 'shootanim' then
		setProperty('dad.curCharacter', curDad);
	end
end