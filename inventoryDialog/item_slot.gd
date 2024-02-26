extends PanelContainer
@onready var texture_rect:TextureRect = %TextureRect

var _item:Item

func display(item:Item):
	_item = item
	texture_rect.texture = item.icon	
	

func _on_texture_rect_mouse_entered():
	print(_item.name)
