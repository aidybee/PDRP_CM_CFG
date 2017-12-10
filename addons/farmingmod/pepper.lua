if !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:Farmingmod() then return end

local ITEM = {}

ITEM.NAME = "Pepper"
ITEM.INFORMATION = "The main colors of peppers are green, yellow, orange and red"
ITEM.MODEL = "models/props/eryk/farmingmod/pepper.mdl"
ITEM.SKIN = 0

ITEM.SELL = 75
ITEM.BUY = 80

ITEM.WEIGHT = 0.5

ITEM.ADDON = true

ITEM.LoadData = function( self, ent )
  local item = FARMINGMOD:GetItemByName(string.lower(self.NAME))
  if !item then return end

  item.seedbag = false

	ent:SetInventory(item, 1)
end

CRAFTINGMOD.ITEMS:Register(ITEM)
