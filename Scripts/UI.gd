extends Control

var p1Score = 0
var p2Score = 0

signal scoreChanged(player, newScore)



func _on_Balltje_miss(player):
	
	if player == 1:
		p1Score += 1
		emit_signal("scoreChanged", player, p1Score)

	elif player == 2:
		p2Score += 1
		emit_signal("scoreChanged", player, p2Score)
