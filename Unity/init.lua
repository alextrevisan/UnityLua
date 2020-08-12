Time = require 'Unity.Time'
local ostime = os.clock

local Unity = {}
Unity.behaviours = {}
Unity.add = function(behaviour)
    
    Unity.behaviours[#Unity.behaviours+1] = behaviour
end

Unity.start = function()
    --Start
    for i = 1,#Unity.behaviours do
        local v = Unity.behaviours[i]
        v:Start()
    end

    --Main loop
    local start = ostime()
    while true do
        Time.deltaTime = ostime() - start
        start = ostime()
        --Start
        for i = 1,#Unity.behaviours do
            local v = Unity.behaviours[i]
            v:Update()
        end
    end
end

return Unity