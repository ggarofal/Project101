extends Node2D

var speed = Signals.SPEED

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = 1200
	position.y = randi_range(20,600)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= delta * speed
	var collisionObjects = $Area2D.get_overlapping_bodies()
	for object in collisionObjects:
		if object is CharacterBody2D:
			Signals.YouDied.emit()
	pass
