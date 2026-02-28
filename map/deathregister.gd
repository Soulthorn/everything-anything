extends Area2D
@onready var sound = $WaterSplashSoundEffect

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if body.has_method("die"):
		sound.play()
		body.die()
	  
