extends CharacterBody2D


const SPEED = 300.0
var myWeapon = null


func _physics_process(delta):


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	var directionX = Input.get_axis("ui_left", "ui_right")
	var directionY = Input.get_axis("ui_up","ui_down")
	if directionX:
		velocity.x = directionX * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if directionY:
		velocity.y = directionY * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	

	move_and_slide()


func pickupWeapon(weapon:Item):
	if myWeapon == null:
		myWeapon = weapon
		var newWeapon = weapon.scene.instantiate()
		newWeapon.position
		add_child(newWeapon)
	else:
		print("already have a ", myWeapon.name)
	

func _on_item_pickup(item:Item):
	print("Player got a ", item.name)
	if item.type == "weapon":
		pickupWeapon(item)

	pass
