class_name Inventory

var _content:Array[Item] = []
var LeftHand:Item = null
var RightHand:Item = null


func add_item(item:Item):
	_content.append(item)
	
	
func remove_item(item:Item):
	_content.erase(item)
	
func equipHand(hand:String, item:Item):
	if hand =="Left":
		LeftHand = item
	elif hand == "Right":
		RightHand = item
	
	
func get_items() -> Array[Item]:
	return _content
	
func has_all(items:Array[Item]) -> bool:
	var needed:Array[Item] = items.duplicate()
	
	for available in _content:
		needed.erase(available)
		
	return needed.is_empty()
