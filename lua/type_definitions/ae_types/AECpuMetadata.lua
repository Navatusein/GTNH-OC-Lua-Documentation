---@meta _

---@class AECpuMetadata
---@field name string # The name of the CPU.
---@field busy boolean # true if the cpu is currently crafting something.
---@field storage integer # The storage capacity of the cpu.
---@field coprocessors integer # The number of available coprocessors.
---@field cpu AECpu # The CPU being described.