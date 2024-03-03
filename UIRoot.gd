extends CanvasLayer

@onready var equip_dialog = %EquipDialog
@onready var crafting_dialog:CraftingDialog = %CraftingDialog
@onready var inventory_dialog:InventoryDialog = %InventoryDialog
@onready var coin_dialog = %coinDialog
@onready var player = %Player
@export var all_recipes:ResourceGroup

var _all_recipes:Array[Recipe] = []

func _ready():
	all_recipes.load_all_into(_all_recipes)
	equip_dialog.load(player.inventory)

func _process(delta):
	coin_dialog.setCoinCount(player.coins)
		
func _unhandled_input(event):
	if event.is_action_released("inventory"):
		if !inventory_dialog.is_visible():
			inventory_dialog.open(player.inventory)
		else:
			inventory_dialog._on_close_button_pressed()
	if event.is_action_released("crafting"):
		if !crafting_dialog.is_visible():
			crafting_dialog.open(_all_recipes,player.inventory)
		else:
			crafting_dialog._on_close_button_pressed()
	
