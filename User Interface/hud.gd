extends Control


@onready var air_label = $CanvasLayer/ColorRect/Air


func update_air(air : int) -> void:
	air_label.text = str("Air: ", air)
