extends PanelContainer
@onready var LeftHand = %LeftHand
@onready var RightHand = %RightHand
var _inventory:Inventory

func load(inventory:Inventory):
	_inventory = inventory

func equipHand(hand:String,item):
	if hand == "LeftHand":
		LeftHand.display(item)
	elif hand == "RightHand":
		RightHand.display(item)
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if _inventory.LeftHand:
		equipHand("LeftHand", _inventory.LeftHand)
	if _inventory.RightHand:
		equipHand("RightHand", _inventory.RightHand)
