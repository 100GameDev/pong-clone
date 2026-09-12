extends CharacterBody2D

var max_speed: int = 500

func _process(_delta: float) -> void:
	var direction := Vector2(0, 0)
	direction.y = Input.get_axis("move_up_p2", "move_down_p2")
	velocity = direction * max_speed
	move_and_slide()
