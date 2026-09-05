extends Node

@export var level1 : PackedScene
@export var menu1 : PackedScene

func startLevel1():
	for child in get_children():
		if child is Node:
			child.queue_free()
	var level := level1.instantiate()
	add_child(level)

func goToMenu():
	for child in get_children():
		if child is Node:
			child.queue_free()
	var menu := menu1.instantiate()
	add_child(menu)
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Signals.LoadLevel.connect(startLevel1)
	Signals.MainMenu.connect(goToMenu)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("Esc"):
		Signals.MainMenu.emit()
	pass
