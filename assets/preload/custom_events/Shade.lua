function onCreate()
	makeLuaSprite('shade', 'shadepink', 0, 0);
	setLuaSpriteScrollFactor('shade', 0, 0);
	defaultCamZoom = getProperty('defaultCamZoom') - 0.01;
	setProperty('shade.scale.x', 1 / defaultCamZoom);
	setProperty('shade.scale.y', 1 / defaultCamZoom);
	setProperty('shade.alpha', 0.0001);
	addLuaSprite('shade', true);
end

-- Event notes hooks
function onEvent(name, value1, value2)
	if name == "Shade" then
		choose = tonumber(value2);
		if (choose == 0) then
	        setProperty('shade.alpha', 1);
        end
		if (choose == 1) then
	    	setProperty('shade.alpha', 0.0001);
        end
	end
end