extends CharacterBody2D

var max_speed: float = 600.0
@onready var ball: CharacterBody2D = %ball
@export var deadzone := 10.0 # Positioning difference between the ball to the paddle

func _process(_delta: float) -> void:
	var target_y_difference = ball.global_position.y - global_position.y
	
	if abs(target_y_difference) > deadzone:
		if target_y_difference > 0:
			velocity.y = max_speed
		else:
			velocity.y = -max_speed
	else:
		velocity.y = 0
	move_and_slide()
