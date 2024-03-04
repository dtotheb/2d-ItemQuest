extends CharacterBody2D

var _target
@export var speed:int = 150

func _on_vision_body_entered(body):
	if body.name == "Player":
		_target = body
		print("player seen")
		$StateChart.send_event("playerEntered") # Replace with function body.
	



func _on_vision_body_exited(body):
	if body.name == "Player":
		print("player left")
		$StateChart.send_event("playerLeft")


func _on_active_state_processing(delta):
	#move towards the target
	var direction:Vector2 = _target.global_position - global_position
	velocity = direction.normalized() * speed
	move_and_slide()
	
