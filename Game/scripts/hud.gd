extends CanvasLayer

@onready var score_label: Label = $ScoreLabel

func _ready():
	$ScoreLabel.text = str(GameManager.total_score)
	GameManager.score_changed.connect(_on_score_changed)

func _on_score_changed(new_score):
	$ScoreLabel.text = str(new_score)
