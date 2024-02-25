extends CanvasLayer

@onready var crafting_dialog:CraftingDialog = %CraftingDialog
@onready var inventory_dialog:InventoryDialog = %InventoryDialog
@onready var player = %Player
# Called when the node enters the scene tree for the first time.
const COIN_STACK = preload("res://recipes/coinStack.tres")

func _unhandled_input(event):
	if event.is_action_released("inventory"):
		inventory_dialog.open(player.inventory)
	if event.is_action_released("crafting"):
		crafting_dialog.open([COIN_STACK],player.inventory)
