extends Sprite2D

var max_speed = 500.0
var velocity := Vector2(500, 500)

func _process(delta: float) -> void:
	var direction := Vector2(0, 0)
	direction.y = Input.get_axis("move_up_p2", "move_down_p2")
	velocity += direction * max_speed
	position = velocity * delta
