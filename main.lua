local Unity = require 'Unity'
local Application = require 'Unity.Application'
local MonoBehaviour = require 'Unity.MonoBehaviour'
function sleep(s)
  local ntime = os.clock() + s/1000
  repeat until os.clock() >= ntime
end
local game = MonoBehaviour:new()
function game:Start()
	print('start')
end

local FPS = 0
local SECOND = 0
function game:Update()
	FPS = FPS + 1
	SECOND = SECOND + Time.deltaTime
	if SECOND >= 1.0 then
		print(FPS)
		FPS = 0
		SECOND = 0
	end
	--sleep(1)
	--print(Time.deltaTime)
end
Unity.start()
