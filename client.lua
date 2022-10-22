local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('open:vending')
AddEventHandler('open:vending', function ()
    local ShopItems = {}
    ShopItems.label = "Vending Machine"
    ShopItems.items = Config.VendingItem
    ShopItems.slots = #Config.VendingItem
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "Vendingshop_"..math.random(1, 99), ShopItems)
end)

RegisterNetEvent('open:coffee')
AddEventHandler('open:coffee', function ()
	local ShopItems = {}
	ShopItems.label = "Coffee Machine"
	ShopItems.items = Config.CoffeeItem
	ShopItems.slots = #Config.CoffeeItem
	TriggerServerEvent("inventory:server:OpenInventory", "shop", "Coffeeshop_"..math.random(1, 99), ShopItems) 
end)

RegisterNetEvent('open:water')
AddEventHandler('open:water', function ()
	local ShopItems = {}
	ShopItems.label = "Water Dispenser"
	ShopItems.items = Config.WaterItem
	ShopItems.slots = #Config.WaterItem
	TriggerServerEvent("inventory:server:OpenInventory", "shop", "Watershop_"..math.random(1, 99), ShopItems) 
end)

RegisterNetEvent('open:snacks')
AddEventHandler('open:snacks', function ()
	local ShopItems = {}
	ShopItems.label = "Snacks"
	ShopItems.items = Config.SnackItem
	ShopItems.slots = #Config.SnackItem
	TriggerServerEvent("inventory:server:OpenInventory", "shop", "Snackshop_"..math.random(1, 99), ShopItems) 
end)

local prop = {
	"prop_vend_soda_01",
	"prop_vend_soda_02",
}
exports['qb-target']:AddTargetModel(prop, {
	options = {
		{
			type = "client",
			event = "open:vending",
			icon = "fas fa-solid fa-whiskey-glass",
			label = "Vending Machine",
		},
	},
	distance = 2.5
})

local prop = {
	"prop_vend_coffe_01",
}
exports['qb-target']:AddTargetModel(prop, {
	options = {
		{
			type = "client",
			event = "open:coffee",
			icon = "fas fa-solid fa-mug-saucer",
			label = "Coffee Machine",
		},
	},
	distance = 2.5
})

local prop = {
	"prop_watercooler",
}
exports['qb-target']:AddTargetModel(prop, {
	options = {
		{
			type = "client",
			event = "open:water",
			icon = "fas fa-solid fa-droplet",
			label = "Water Dispenser",
		},
	},
	distance = 2.5
})

local prop = {
	"prop_vend_snak_01",
}
exports['qb-target']:AddTargetModel(prop, {
	options = {
		{
			type = "client",
			event = "open:snacks",
			icon = "fa-solid fa-burger",
			label = "Snack Machine",
		},
	},
	distance = 2.5
})
