extends CharacterBody2D


const SPEED = 300.0

@onready var hud = $Hud
@export var air_amount : int

var air_left : int = 100
var air_rate : float = 1
var safe : bool = true


func _ready() -> void:
	hud.update_air(air_left)
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("quit"):
		get_tree().quit()
	if event is InputEventMouseMotion:
		position.x += event.relative.x
		position.y += event.relative.y


func _physics_process(delta: float) -> void:
	if safe and air_amount != air_left:
		air_left = air_amount
		hud.update_air(air_left)
	elif !safe and air_left != 0:
		air_left -= delta * air_rate
		hud.update_air(air_left)
	
	if air_left == 0:
		Global.end_game()


func update_status(safe : bool) -> void:
	self.safe = safe
