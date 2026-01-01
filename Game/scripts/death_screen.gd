extends CanvasLayer

@onready var total_coins: Label = $TotalCoins
@onready var level_coins: Label = $LevelCoins

func _ready():
	total_coins.text = "Total Coins: " + str(GameManager.total_score)
	level_coins.text = "Current Level Coins: " + str(GameManager.level_score)

func _process(_delta):
	if Input.is_action_just_pressed("start"):
		restart_level()

func restart_level():
	GameManager.reset_level_score()
	get_tree().reload_current_scene()
	queue_free()
