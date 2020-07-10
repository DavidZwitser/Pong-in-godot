extends AudioStreamPlayer

func _on_Balltje_hit_paddle(player, velocity):
	
	stream = load("res://Sounds/ping-pong.wav")
	pitch_scale = .8 if player == 1 else 1.2

	play()


func _on_Balltje_miss(player):
	
	stream = load("res://Sounds/miss.wav")
	pitch_scale = 1
	
	play()


func _on_Balltje_hit_wall():
	
	#stream = load("res://Sounds/hit-wall.wav")
	#pitch_scale = 1
	
	#play()
	pass
