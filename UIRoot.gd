extends CanvasLayer

@onready var crafting_dialog:CraftingDialog = %CraftingDialog
@onready var inventory_dialog:InventoryDialog = %InventoryDialog
@onready var player = %Player
@export var all_recipes:ResourceGroup

var _all_recipes:Array[Recipe] = []
# Called when the node enters the scene tree for the first time.
const COIN_STACK = preload("res://recipes/coinStack.tres")
const CROWN_1 = preload("res://recipes/crown1.tres")
const SPLIT_COINS = preload("res://recipes/splitCoins.tres")

func _ready():
	all_recipes.load_all_into(_all_recipes)
		
func _unhandled_input(event):
	if event.is_action_released("inventory"):
		inventory_dialog.open(player.inventory)
	if event.is_action_released("crafting"):
		crafting_dialog.open(_all_recipes,player.inventory)
