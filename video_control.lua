scriptId = 'com.thalmic.examples.outputeverything'

function time_check(edge, time)
    local start = myo.getTimeMilliseconds()
    local now = start
    while ((now - start) < time) do
        if edge == "off" then
            return false
        end
        now = myo.getTimeMilliseconds()
    end
    myo.vibrate("short")
    myo.vibrate("short")
    return true
end

function onPoseEdge(pose, edge)
    -- Produces letter presses on gesture to be used by a site
    --
    -- Fist - f
    -- waveIn - i
    -- waveOut - o
    -- thumbToPinky - t

    if pose == "fist" then
        length = time_check(edge, 300)
        if length == true then
            myo.debug("fisting")            
            myo.keyboard("f", "press")
        end
    end
    if pose == "waveIn" then
        length = time_check(edge, 300)
        if length == true then
            myo.debug("waving in")            
            myo.keyboard("i", "press")
        end
    end
    if pose == "waveOut" then
        length = time_check(edge, 300)
        if length == true then
            myo.debug("waving out")            
            myo.keyboard("o", "press")
        end
    end
    if pose == "thumbToPinky" then
        length = time_check(edge, 100)
        if length == true then
            myo.debug("peace")            
            myo.keyboard("t", "press")
        end
    end
end


function onForegroundWindowChange(app, title)
    myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
    return true
end

function activeAppName()
    return "Output Everything"
end

function onActiveChange(isActive)
    myo.debug("onActiveChange")
end
