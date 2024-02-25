extends Node2D
@export var item:Item

# Called when the node enters the scene tree for the first time.
func _ready():
	var scene = item.scene.instantiate()
	add_child(scene)

func _on_area_2d_body_entered(body):
	if body.has_method("_on_item_pickup"):
		body._on_item_pickup(item)
	queue_free()
