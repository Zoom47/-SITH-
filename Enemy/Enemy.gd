extends KinematicBody2D

var curHp : int = 5
var maxHp : int = 5

var moveSpeed : int = 150
export var xpToGive : int = 2000

var damage : int = 1
var attackRate : float = 1.0
var attackDist : int = 80
var chaseDist : int = 400

# Inventory variables
export var gold : int = 5000

export var stuff = {
		"Health Potion": 1, 
		"Mana Potion"  : 1, 
		"Time Potion"  : 2
	}
	
var player = load("res://Player/Player.gd")

onready var timer = get_node("Timer")
onready var target = get_node("/root/MainScene/Player")


var ennemy

#func _ready():
#	$Sprite/Panneau/DialogArea.connect("body_entered", self, "_on_PNJMobile_body_entered")
	
func _on_PNJMobile_body_entered(player):
	
	var fightscene = PlayerData.FightScene.instance(0)
	fightscene.determine_teams(PlayerData.team, ennemy)
	get_tree().get_root().add_child(fightscene)
	get_node("/root").remove_child(get_node("/root/Salle1"))

#func _ready ():
#
#	timer.wait_time = attackRate
#	timer.start()
#
#func _physics_process (delta):
#
#	var dist = position.distance_to(target.position)
#
#	if dist > attackDist and dist < chaseDist:
#
#		var vel = (target.position - position).normalized()
#
#		move_and_slide(vel * moveSpeed)
#
#func _on_Timer_timeout ():
#
#	if position.distance_to(target.position) <= attackDist:
#		target.take_damage(damage)
		
func take_damage (dmgToTake):
	
	curHp -= dmgToTake
	
	if curHp <= 0:
			player.give_xp(xpToGive)
			player.give_gold(gold)
			player.get_inventory(stuff)
			die()
		
func die ():
	
	queue_free()
