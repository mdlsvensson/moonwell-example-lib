-- A plain Lua module: require "example.greet".
local M = {}

---@param name string
---@return string
function M.hello(name)
  return "Hello from moonwell-example-lib, " .. name
end

return M
