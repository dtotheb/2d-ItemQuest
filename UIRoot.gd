extends CanvasLayer

@onready var equip_dialog = %EquipDialog
@onready var crafting_dialog:CraftingDialog = %CraftingDialog
@onready var inventory_dialog:InventoryDialog = %InventoryDialog
@onready var player = %Player
@export var all_recipes:ResourceGroup

var _all_recipes:Array[Recipe] = []

func _ready():
	all_recipes.load_all_into(_all_recipes)
	equip_dialog.load(player.inventory)
		
func _unhandled_input(event):
	if event.is_action_released("inventory"):
		inventory_dialog.open(player.inventory)
	if event.is_action_released("crafting"):
		crafting_dialog.open(_all_recipes,player.inventory)
	
