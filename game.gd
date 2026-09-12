extends Node2D

@onready var player_1: CharacterBody2D = %Player
@onready var player_2: CharacterBody2D = %Player2
@onready var score: Label = %Score

var p1_score := 0
var p2_score := 0

func _ready() -> void:
	player_1.global_position = Vector2(1070.0, 300.0)
	player_2.global_position = Vector2(80.0, 300.0)

func _on_ball_goalp_1() -> void:
	p1_score += 1
	score.set_text("SCORE: " + str(p2_score) + " x " + str(p1_score))

func _on_ball_goalp_2() -> void:
	p2_score += 1
	score.set_text("SCORE: " + str(p2_score) + " x " + str(p1_score))
