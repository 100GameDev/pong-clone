extends CharacterBody2D

var max_speed: float = 600.0

func _process(_delta: float) -> void:
	var direction := Vector2(0, 0)
	direction.y = Input.get_axis("move_up_p1", "move_down_p1")
	velocity = direction * max_speed
	move_and_slide()
