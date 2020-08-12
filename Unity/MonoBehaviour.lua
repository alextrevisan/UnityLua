local Unity = require 'Unity'
local MonoBehaviour = {balance = 0}

function MonoBehaviour:new (children)
    children = children or {}
    setmetatable(children, self)
    self.__index = self
    Unity.add(children)
    return children
end
function MonoBehaviour:Start() end
function MonoBehaviour:Update() end
function MonoBehaviour:FixedUpdate() end
function MonoBehaviour:LateUpdate() end
function MonoBehaviour:OnGUI() end
function MonoBehaviour:OnDisable() end
function MonoBehaviour:OnEnable() end


return MonoBehaviour