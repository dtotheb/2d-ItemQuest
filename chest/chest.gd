extends Node2D

@export var contents:Array[Item] = []
@onready var anim = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("closed")

func openChest(body):
	anim.play("open")
	if body.has_method("_on_item_pickup"):
		for item in contents:
			body._on_item_pickup(item)
		contents.clear()


func _on_area_2d_body_entered(body):
	if body.name == "Player":
		openChest(body)
