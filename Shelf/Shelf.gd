extends StaticBody2D

export(String, MULTILINE) var content = """You got 1 Health Potion !"""

# Inventory variables
export var inventory = {
		"Health Potion": 1, 
		"Mana Potion"  : 1, 
		"Time Potion"  : 2
	}

export var goldToGive : int = 5


func on_interact (player):
	if Input.is_action_just_pressed("interact"):
		if not content.empty():
			$Dialogue.display_text(self, content)
			$Music.play()


func dialogEnded():
#	player.give_gold(goldToGive)
#	player.get_inventory(inventory)
	goldToGive == 0
	inventory == {}
