extends Label


func _on_UI_scoreChanged(player, newScore):

	if (name == 'P1Score' and player == 1) or (name == 'P2Score' and player == 2):
		
		var scoreText = str(newScore)
		
		if (newScore < 10):
			scoreText = '0' + scoreText
			
		self.text = scoreText
