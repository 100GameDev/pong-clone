extends Sprite2D

var direction := Vector2(0, 0)
var velocity := Vector2(500, 500)

func _process(delta: float) -> void:
	direction.y = Input.get_axis("move_up", "move_down")
	
