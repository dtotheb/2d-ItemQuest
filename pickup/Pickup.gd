extends Node2D
@export var item:Item

# Called when the node enters the scene tree for the first time.
func _ready():
	var scene = item.scene.instantiate()
	add_child(scene)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	print("Picked up: ", item.name)
	if body.has_method("_on_item_pickup"):
		body._on_item_pickup(item)
	queue_free()
