extends PanelContainer

var _coinCount:int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	setCoinCount(0)

func setCoinCount(coins:int):
	_coinCount = coins
	$HBoxContainer/CoinCountLabel.text = str(_coinCount)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
