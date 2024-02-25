extends PanelContainer
@onready var texture_rect:TextureRect = %TextureRect


func display(item:Item):
	texture_rect.texture = item.icon	
	

func _on_texture_rect_mouse_entered():
	print("on texture mouse enter ") # Replace with function body.
