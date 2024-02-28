extends CharacterBody2D


const SPEED = 300.0
var inventory:Inventory = Inventory.new()

func _physics_process(_delta):


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
	if inventory.LeftHand == null:
		inventory.equipHand("Left", weapon)
	elif inventory.RightHand == null:
		inventory.equipHand("Right", weapon)
	

func _on_item_pickup(item:Item):
	if item.type == "weapon":
		pickupWeapon(item)
	else:
		inventory.add_item(item)

