extends Node2D

@export var enemyScene : PackedScene

var i = 0

func kill_player():
	print("AAAA")
	$Player.queue_free()

func on_ready():
	position.x = 800

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	i += 1
	if i == 120:
		i = 0
		var enemy = enemyScene.instantiate()
		Signals.SPEED += 10
		add_child(enemy)
	pass
