extends Control


@onready var game_over = $"Game Over Screen"

var curr_level = load("res://level/test_level.tscn")


func start_level() -> void:
	game_over.end_game_over()
	get_tree().change_scene_to_packed(curr_level)


func end_game() -> void:
	game_over.start_game_over()

