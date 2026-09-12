extends CharacterBody2D

signal goalp1
signal goalp2

@export var start_speed := 350.0
@export var increase_speed := 25.0
var current_speed : float

func _ready() -> void:
	resetball()

func _process(delta: float) -> void:
	var collisionball = move_and_collide(velocity * current_speed * delta)
	
	if collisionball:
		velocity = velocity.bounce(collisionball.get_normal())
		current_speed += increase_speed
	
func resetball():
	position = Vector2(585.0, 295.0)
	current_speed = start_speed
	
	velocity = Vector2(randf_range(-2, 2), randf_range(-2, 2)).normalized()

func _on_goalp_1_body_entered(body: Node2D) -> void:
	resetball()
	goalp1.emit()

func _on_goalp_2_body_entered(body: Node2D) -> void:
	resetball()
	goalp2.emit()
