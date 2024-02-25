extends CanvasLayer


@onready var inventory_dialog = %InventoryDialog
@onready var player = %Player
# Called when the node enters the scene tree for the first time.

func _unhandled_input(event):
	if event.is_action_released("ui_accept"):
		inventory_dialog.open(player.inventory)
