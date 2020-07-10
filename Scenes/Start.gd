extends Label


func _process(delta):
	
	if Input.is_mouse_button_pressed(1):
		get_tree().change_scene("res://Scenes/Main.tscn")
