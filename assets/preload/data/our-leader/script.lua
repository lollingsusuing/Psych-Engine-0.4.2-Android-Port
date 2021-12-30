function onUpdate(elapsed)
    local currentBeat = (getSongPosition() / 1000)*(bpm/60)
    for i = 0, 3 do
        setPropertyFromGroup('playerStrums', i, 'y', _G['defaultPlayerStrumY'..i] + 10 * math.cos((currentBeat + i*0.25) * math.pi));
        setPropertyFromGroup('opponentStrums', i, 'y', _G['defaultOpponentStrumY'..i] + 10 * math.cos((currentBeat + i*0.25) * math.pi));
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	setProperty('health', getProperty('health') - 0.02);
	if  getProperty('health') < 0.001 then
		setProperty('health', 0.001)
	end
end