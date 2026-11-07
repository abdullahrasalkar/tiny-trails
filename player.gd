extends CharacterBody2D

var speed: float = 200.0
var jump_velocity = -400.0
var gravity: float = 980.0
var fall_speed: float = 600.0

func _physics_process(delta: float) -> void:
	var direction := Input.get_axis(
	"move_left",
	"move_right")
	velocity.x = direction * speed
	if not is_on_floor():
		velocity.y += gravity * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y += jump_velocity
	if Input.is_action_just_pressed("move_up") and is_on_floor():
		velocity.y += jump_velocity
	move_and_slide()
