extends Control


func start_game_over() -> void:
	$CanvasLayer.visible = true
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE


func end_game_over() -> void:
	$CanvasLayer.visible = false


func _on_try_again_pressed() -> void:
	Global.start_level()


func _on_exit_game_pressed() -> void:
	get_tree().quit()
