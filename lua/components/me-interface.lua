---@meta _

---@class me_interface: CommonNetworkAPI, EssentiaNetworkAPI, MEInterfaceAPI
---@field type "me_interface"
local meInterface = {}

-- Empty on purpose. The ME interface exposes the ME network API, the essentia
-- part of it, and the interface configuration and pattern methods, all of which
-- are inherited. Unlike the ME controller it carries no RF energy methods.
