extends Node


signal updated
signal died

var score: = 0 setget set_score
var deaths: = 0 setget set_deaths

var inventory = {
		"Health Potion": 1, 
		"Mana Potion"  : 1, 
		"Time Potion"  : 2
	}

func reset():
	self.score = 0
	self.deaths = 0


func set_score(new_score: int) -> void:
	score = new_score
	emit_signal("updated")


func set_deaths(new_value: int) -> void:
	deaths = new_value
	emit_signal("died")
