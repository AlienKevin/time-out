--- === TimeOut ===
--- Set a time out every x minutes to rest for y minutes

local obj = {}
obj.__index = obj

-- Metadata
obj.name = "TimeOut"
obj.version = "0.1"
obj.author = "Kevin Li <kevinli020508@gmail.com>"
obj.homepage = "https://github.com/AlienKevin/time-out"
obj.license = "MIT - https://opensource.org/licenses/MIT"

obj.duration = 30
obj.rest = 3

function obj:init()
    hs.timer.doEvery(hs.timer.minutes(self.duration), function()
        hs.alert.show(
            "You have been staring at the screen for " .. self.duration .. " minutes."
            .. " Please take a " .. self.rest .. " minute break now."
            , hs.timer.minutes(self.rest)
        )
    end)
end

return obj