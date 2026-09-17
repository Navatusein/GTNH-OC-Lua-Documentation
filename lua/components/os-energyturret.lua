---@meta _

---The Energy Turret from OpenSecurity.
---@class os_energyturret: BaseComponent
---@field type "os_energyturret"
local osEnergyturret = {}

---Extends gun shaft (0-2)
---@param length boolean
---@return number
function osEnergyturret.extendShaft(length) end

---Fires the gun.  More damage means longer cooldown and more energy draw. Returns true for success and throws error with a message for failure
---@return table
function osEnergyturret.fire() end

---Current real pitch
---@return number
function osEnergyturret.getPitch() end

---Get gun shaft extension
---@return boolean
function osEnergyturret.getShaftLength() end

---Current real yaw
---@return number
function osEnergyturret.getYaw() end

---Returns whether the gun has reached the set position
---@return boolean
function osEnergyturret.isOnTarget() end

---Returns whether the gun is powered
---@return boolean
---@return number
function osEnergyturret.isPowered() end

---Returns whether the gun is ready to fire again (cooled down and armed)
---@return boolean
function osEnergyturret.isReady() end

---Changes the gun's setpoint (Yaw ranges (0.0..360) Pitch ranges (-45..90))
---@param yaw number
---@param pitch number
function osEnergyturret.moveTo(yaw, pitch) end

---Changes the gun's setpoint in radians
---@param yaw number
---@param pitch number
function osEnergyturret.moveToRadians(yaw, pitch) end

---The mod gives no description for this method.
function osEnergyturret.powerOff() end

---The mod gives no description for this method.
function osEnergyturret.powerOn() end

---The mod gives no description for this method.
function osEnergyturret.setArmed() end
