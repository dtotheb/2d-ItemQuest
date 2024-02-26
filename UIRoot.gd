extends CanvasLayer

@onready var crafting_dialog:CraftingDialog = %CraftingDialog
@onready var inventory_dialog:InventoryDialog = %InventoryDialog
@onready var player = %Player
# Called when the node enters the scene tree for the first time.
const COIN_STACK = preload("res://recipes/coinStack.tres")
const CROWN_1 = preload("res://recipes/crown1.tres")
const SPLIT_COINS = preload("res://recipes/splitCoins.tres")

func _unhandled_input(event):
	if event.is_action_released("inventory"):
		inventory_dialog.open(player.inventory)
	if event.is_action_released("crafting"):
		crafting_dialog.open([COIN_STACK, SPLIT_COINS,CROWN_1],player.inventory)
