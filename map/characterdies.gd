extends CharacterBody2D

@export var speed := 200.0
var spawn_position: Vector2

func _ready():
	spawn_position = global_position  # Save starting position

func die():
	respawn()

func respawn():
	global_position = spawn_position
	velocity = Vector2.ZERO
