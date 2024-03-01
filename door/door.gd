extends Node2D

@export var contents:Array[Item] = []
@onready var anim = $AnimatedSprite2D
var closed = true

# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("closed")

func openDoor():
	closed = false
	anim.play("open")
	$AnimatedSprite2D/StaticBody2D.queue_free()


func _on_area_2d_body_entered(body):
	if body.name == "Player" and closed:
		openDoor()
