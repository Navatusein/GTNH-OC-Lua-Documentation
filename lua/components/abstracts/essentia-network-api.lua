---@meta _

---Essentia part of the ME network API, added by Thaumic Energistics.
---Present on the ME controller and on both kinds of ME interface,
---but not on the ME upgrade or the export bus.
---@class EssentiaNetworkAPI: BaseComponent
local EssentiaNetworkAPI = {}

---Get a list of the stored essentia in the network.
---@return EssentiaStack[]
function EssentiaNetworkAPI.getEssentiaInNetwork() end

---Get a single stored essentia in the network.
---@param aspect string|table # The name of the aspect, or a table describing it.
---@return EssentiaStack[]
function EssentiaNetworkAPI.getEssentiaInNetwork(aspect) end

---Enable or disable subscription to the `network_essentia_changed` event.
---@param enabled boolean
function EssentiaNetworkAPI.setEssentiaEventSubscription(enabled) end

---Returns whether the `network_essentia_changed` event subscription is currently enabled.
---@return boolean
function EssentiaNetworkAPI.isEssentiaEventSubscription() end
