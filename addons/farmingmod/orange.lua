if !CRAFTINGMOD.Config.UseAddonConfigurations or !CRAFTINGMOD.Config:Farmingmod() then return end

local ITEM = {}

ITEM.NAME = "Orange"
ITEM.INFORMATION = "An orange has a special smell"
ITEM.MODEL = "models/props/eryk/farmingmod/orange.mdl"
ITEM.SKIN = 0

ITEM.SELL = 90
ITEM.BUY = 100

ITEM.WEIGHT = 0.5

ITEM.ADDON = true

ITEM.LoadData = function( self, ent )
  local item = FARMINGMOD:GetItemByName(string.lower(self.NAME))
  if !item then return end

  item.seedbag = false

	ent:SetInventory(item, 1)
end

CRAFTINGMOD.ITEMS:Register(ITEM)
