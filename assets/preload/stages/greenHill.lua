function onCreate()
	-- background shit
	
	local suff = '';
	if (difficulty == 2) then
		suff = '-encore';
	end
	
	makeAnimatedLuaSprite('bg', 'greenhill/bg'..suff, 0, 0);
	addAnimationByPrefix('bg', 'scrollingpalette', 'water', 8, true);
	objectPlayAnimation('bg', 'scrollingpalette');
	setLuaSpriteScrollFactor('bg', 0.4, 0.4);
	scaleObject('bg', 4, 4);
	setProperty('bg.antialiasing', false);
	
	makeLuaSprite('layer1', 'greenhill/layer1'..suff, 0, 0);
	setLuaSpriteScrollFactor('layer1', 1.0, 1.0);
	scaleObject('layer1', 4, 4);
	setProperty('layer1.antialiasing', false);
	
	makeAnimatedLuaSprite('sunflower', 'greenhill/plants/sunflower'..suff, 472, 176);
	addAnimationByPrefix('sunflower', 'spin', 'speen', 12, true);
	objectPlayAnimation('sunflower', 'spin');
	setLuaSpriteScrollFactor('sunflower', 1.0, 1.0);
	scaleObject('sunflower', 4, 4);
	setProperty('sunflower.antialiasing', false);
	
	makeAnimatedLuaSprite('purple1', 'greenhill/plants/purpleflower1'..suff, 728, 224);
	addAnimationByPrefix('purple1', 'bounce1', 'bounce', 12, true);
	objectPlayAnimation('purple1', 'bounce1');
	setLuaSpriteScrollFactor('purple1', 1.0, 1.0);
	scaleObject('purple1', 4, 4);
	setProperty('purple1.antialiasing', false);
	
	makeAnimatedLuaSprite('purple2', 'greenhill/plants/purpleflower2'..suff, 856, 240);
	addAnimationByPrefix('purple2', 'bounce2', 'bounce', 12, true);
	objectPlayAnimation('purple2', 'bounce2');
	setLuaSpriteScrollFactor('purple2', 1.0, 1.0);
	scaleObject('purple2', 4, 4);
	setProperty('purple2.antialiasing', false);
	
	makeLuaSprite('stagefront', 'greenhill/ground'..suff, 0, 0);
	setLuaSpriteScrollFactor('stagefront', 1.0, 1.0);
	scaleObject('stagefront', 4, 4);
	setProperty('stagefront.antialiasing', false);
	
	makeLuaSprite('layer2', 'greenhill/layer2'..suff, 0, 0);
	setLuaSpriteScrollFactor('layer2', 1.0, 1.0);
	scaleObject('layer2', 4, 4);
	setProperty('layer2.antialiasing', false);
	
	addLuaSprite('bg', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('layer1', false);
	addLuaSprite('sunflower', false);
	addLuaSprite('purple1', false);
	addLuaSprite('purple2', false);
	addLuaSprite('layer2', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end