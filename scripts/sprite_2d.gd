extends Sprite2D

var speed: float = 200.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction := Vector2.ZERO
	
	if Input.is_action_pressed("move_right"):
		direction.x += speed * delta
	if Input.is_action_pressed("move_left"):
		direction.x -= speed * delta
	if Input.is_action_pressed("move_up"):
		direction.y -= speed * delta
	if Input.is_action_pressed("move_down"):
		direction.y += speed * delta
	direction = direction.normalized()
	position += direction * delta * speed
