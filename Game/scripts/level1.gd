extends Node2D

func _ready():
	GameManager.start_level()
	Music.play_music(preload("res://assets/music/DavidKBD - Pink Bloom Pack - 08 - Lost Spaceship's Signal.ogg"))
