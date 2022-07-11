
local xx = 1030;
local yy = 781;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
local modchart = true
local stopMoving = false;

function onCreate()
    doTweenAlpha('hide', 'camHUD', 0, 0.1, 'circInOut')
    makeLuaSprite('void', 'lake/void', -360, 0);
	scaleObject('void', 6, 6);
	addLuaSprite('void', false);
	setProperty('void.antialiasing', false);

    makeLuaSprite('redvoid', 'lake/redvoid', -360, 0);
	scaleObject('redvoid', 6, 6);
	setProperty('redvoid.antialiasing', false);

    makeLuaSprite('dontyou', 'lake/dontyou', 100, 100);
	scaleObject('dontyou', 9, 9);
	setProperty('dontyou.antialiasing', false);

    makeLuaSprite('devil', 'lake/devil', 100, 100);
	scaleObject('devil', 9, 9);
	setProperty('devil.antialiasing', false);

    makeAnimatedLuaSprite('clock', 'lake/clock', 560, 400);
    addAnimationByPrefix('clock', 'idle', 'clock idle',12,true)
    addAnimationByPrefix('clock', 'break', 'clock break',12,false)
	scaleObject('clock', 9, 9);
	setProperty('clock.antialiasing', false);

    makeAnimatedLuaSprite('flipside', 'lake/flipside', -250, 100);
    addAnimationByPrefix('flipside', 'lake', 'flipside lake',6,true)
	scaleObject('flipside', 6, 6);
	addLuaSprite('flipside', false);
	setProperty('flipside.antialiasing', false);

    makeAnimatedLuaSprite('redbear', 'lake/redbear', 100, 100);
    addAnimationByPrefix('redbear', 'face', 'redbear face',12,true)
    addAnimationByPrefix('redbear', 'text', 'redbear text',12,true)
	scaleObject('redbear', 9, 9);
	setProperty('redbear.antialiasing', false);

    makeAnimatedLuaSprite('vintage', 'lake/vintage', -360, 0);
    addAnimationByPrefix('vintage', 'idle', 'idle',12,true)
	scaleObject('vintage', 6, 6);
	addLuaSprite('vintage', true);
	setProperty('vintage.antialiasing', false);
    doTweenAlpha('onCreate', 'vintage',0.2, 1, 'linear');
end

function onStepHit()
    if curStep == 832 then
        setProperty("defaultCamZoom",0.52)
    end
    if curStep == 840 then
        setProperty("defaultCamZoom",0.55)
    end
    if curStep == 848 then
        setProperty("defaultCamZoom",0.58)
    end
    if curStep == 856 then
        setProperty("defaultCamZoom",0.61)
    end
    if curStep == 864 then
        setProperty("defaultCamZoom",0.64)
    end
    if curStep == 872 then
        setProperty("defaultCamZoom",0.67)
    end
    if curStep == 880 then
        setProperty("defaultCamZoom",0.49)
    end
    if curStep == 886 then
        addLuaSprite('devil', true);
        setProperty('devil.alpha', 1);
        doTweenAlpha('ticktock', 'devil', 0, 1, 'linear')
    end
    if curStep == 122 then
        addLuaSprite('dontyou', true);
        doTweenAlpha('onStepHit', 'camHUD', 1, 1, 'circInOut')
        doTweenAlpha('dontyoufade', 'dontyou', 0, 1, 'linear')
    end
    if curStep == 512 then
        doTweenAlpha('hidehud', 'camHUD', 0, 2, 'circInOut')
        doTweenAlpha('hideboi', 'boyfriend',0, 2, 'linear')
        doTweenAlpha('hidedad', 'dad',0, 2, 'linear')
        doTweenAlpha('hidelake', 'flipside',0, 2, 'linear')
    end
    if curStep == 567 then
        setProperty('redbear.alpha', 0);
        doTweenAlpha('peaceful', 'redbear',1, 0.5, 'linear')
        objectPlayAnimation('redbear', 'text', false)
        addLuaSprite('redbear', false);
    end
    if curStep == 576 then
        removeLuaSprite('redbear', false);	
        doTweenAlpha('hidehud', 'camHUD', 1, 0.1, 'circInOut')
        doTweenAlpha('hideboi', 'boyfriend',1, 0.1, 'linear')
        doTweenAlpha('hidedad', 'dad',1, 0.1, 'linear')
        doTweenAlpha('hidelake', 'flipside',1, 0.1, 'linear')
    end
    if curStep == 960 then
        setProperty('timeBar.visible', false)
	    setProperty('timeBarBG.visible', false)
	    setProperty('timeTxt.visible', false)
        setProperty('iconP1.visible', false)
	    setProperty('iconP2.visible', false)
        setProperty('healthBar.visible', false)
	    setProperty('healthBarBG.visible', false)
        removeLuaSprite('redvoid', false);
        doTweenColor('omcblack', 'dad', 'FFFFFF', 0.5, 'linear');
        doTweenColor('bfblack', 'boyfriend', 'FFFFFF', 0.5, 'linear');
        objectPlayAnimation('clock', 'break', false)
	end
    if curStep == 815 then
        doTweenAlpha('hideboi', 'boyfriend',0, 2, 'linear')
        doTweenAlpha('hidedad', 'dad',0, 2, 'linear')
        doTweenAlpha('hidelake', 'flipside',0, 2, 'linear')
	end
	if curStep == 832 then
        removeLuaSprite('flipside', false);	
        playSound('ANGRY_TEXT_BOX', 0.5, false)
		setProperty('vintage.alpha', 1);
		doTweenAlpha('onStepHit', 'vintage',0.2, 1, 'linear')
		triggerEvent('Change Character', 0, 'swimmingbf')
		triggerEvent('Change Character', 1, 'finalomc')
		setProperty('dad.alpha', 0.7);
        setProperty('boyfriend.alpha', 1);
        doTweenAlpha('hidevoid', 'void',0.5, 2, 'linear')
        doTweenColor('omcblack', 'dad', '000000', 0.01, 'linear');
        doTweenColor('bfblack', 'boyfriend', '000000', 0.01, 'linear');
        addLuaSprite('redvoid', false);
	end
    if curStep == 896 then
        addLuaSprite('clock', true);
    end
    if curStep >= 816 and curStep < 835 and getProperty('health') > 0.4 then
		setProperty('health', getProperty('health') - 0.1*2);
    end
    if curStep == 1668 then
        doTweenAlpha('hidehud', 'camHUD', 0, 0.1, 'circInOut')
        doTweenAlpha('hideboi', 'boyfriend',0, 0.1, 'linear')
        doTweenAlpha('hidedad', 'dad',0, 0.1, 'linear')
        doTweenAlpha('hidelake', 'flipside',0, 0.1, 'linear')
    end
end

function onUpdate(elapsed)
    doTweenColor('timeBar', 'timeBar', 'D32E49', 0.01, 'linear');

    noteTweenAlpha('dadstrums0', 0, 0, 0.1, 'linear')
    noteTweenAlpha('dadstrums1', 1, 0, 0.1, 'linear')
    noteTweenAlpha('dadstrums2', 2, 0, 0.1, 'linear')
    noteTweenAlpha('dadstrums3', 3, 0, 0.1, 'linear')

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            triggerEvent('Camera Follow Pos','','')
        end
    end  
end

function onGameOver()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'redbf-pixel-dead')
	playSound('ANGRY_TEXT_BOX', 0.8, false)
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'one_down')
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'STL')
	setPropertyFromClass('GameOverSubstate', 'endSoundName', '')
end