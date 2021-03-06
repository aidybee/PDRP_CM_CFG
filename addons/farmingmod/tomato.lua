if !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:Farmingmod() then return end

local ITEM = {}

ITEM.NAME = "Tomato"
ITEM.INFORMATION = "The word tomato comes from the Spanish tomate"
ITEM.MODEL = "models/props/eryk/farmingmod/tomato.mdl"
ITEM.SKIN = 0

ITEM.SELL = 50
ITEM.BUY = 60

ITEM.WEIGHT = 0.5

ITEM.ADDON = true

ITEM.LoadData = function( self, ent )
  local item = FARMINGMOD:GetItemByName(string.lower(self.NAME))
  if !item then return end

  item.seedbag = false

	ent:SetInventory(item, 1)
end

CRAFTINGMOD.ITEMS:Register(ITEM)
