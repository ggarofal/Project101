extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var velocity := -10
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	position.x += velocity * delta
	if has_overlapping_bodies():
		var bodies := get_overlapping_bodies()
		bodies[0].visible = false
	
	pass
