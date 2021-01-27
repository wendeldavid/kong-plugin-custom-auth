-- local BasePlugin = require "kong.plugins.base_plugin"
local access = require "kong.plugins.custom-auth.access"

local plugin = {
    PRIORITY = 715, -- set the plugin priority, which determines plugin execution order
    VERSION = "0.1",
}

-- function TokenHandler:new()
--     TokenHandler.super.new(self, "custom-auth")
-- end

-- function TokenHandler:access(conf)
--     TokenHandler.super.access(self)
--     access.run(conf)
-- end

function plugin:access(conf)
    access.run(conf)
end

return plugin