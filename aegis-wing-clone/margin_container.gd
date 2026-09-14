extends MarginContainer
	
func _on_button_pressed() -> void:
	Signals.LoadLevel.emit()
	pass 
