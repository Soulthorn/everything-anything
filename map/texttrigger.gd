extends Area2D

@onready var label = $Label2

func _on_body_entered(body: Node2D) -> void:
	# Ensure your Player node is named "Player" or in a "player" group
	if body.name == "Player":
		var tween = create_tween()
		label.show()
		# Fades opacity from 0 to 1 over 0.5 seconds
		tween.tween_property(label, "modulate:a", 1.0, 0.5).from(0.0)

func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		var tween = create_tween()
		# Fades opacity from 1 to 0, then hides the label
		tween.tween_property(label, "modulate:a", 0.0, 0.5)
		tween.finished.connect(label.hide)
