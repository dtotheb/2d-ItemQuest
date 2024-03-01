extends PanelContainer
@onready var texture_rect:TextureRect = %TextureRect

var _item:Item

func display(item:Item):
	_item = item
	texture_rect.texture = item.icon	
	

func showToolTip():
	if _item:
		var name_label = Label.new()
		name_label.text = _item.name
		name_label.position = get_local_mouse_position()
		$Labels.add_child(name_label)
		

func hideToolTip():
	for child in $Labels.get_children():
		child.queue_free()

func _on_mouse_entered():
	showToolTip()


func _on_mouse_exited():
	hideToolTip()
