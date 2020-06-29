extends StaticBody2D

export(String, MULTILINE) var content = """You got 1 Health Potion !"""

# Inventory variables
export var inventory = {
		"Health Potion": 1, 
		"Mana Potion"  : 1, 
		"Time Potion"  : 2
	}

export var goldToGive : int = 5

var player = load("res://Player/Player.gd")

func on_interact (player):
	if Input.is_action_just_pressed("interact"):
		if not content.empty():
			$Dialogue.display_text(self, content)
			$Music.play()
			player.give_gold(goldToGive)


func dialogEnded():
#	player.get_inventory(inventory)
	queue_free()




#func _process(delta):
#	if Input.is_action_just_pressed("ui_accept"):
#		var bodies = $TalkBox.get_overlapping_bodies()
#		PlayerVariables.player.inventory.add(item_name, quantity)
#		if not bodies.empty():
#			$Dialogue.display_text(self, content)
#
##func _on_DropItem_body_entered(body):
##	PlayerVariables.player.inventory.add(item_name, quantity)
#
#func dialogEnded():
#	queue_free()
