extends Node

#const SAVE_DIR = "user://saves/"
#
#onready var console_label = $
#
#var save_path = SAVE_DIR + "save.dat"


export(String, MULTILINE) var content = "Your progress is saved."


func on_interact (player):
	#Pause the game
#	get_tree().paused = true
#	active = true
	
	#Variables that I want to save for the saved file
#	var data = {
#		"name" : "Zoom",
#		"maxHp" : 100,
#		"maxMana" : 200,
#	}
	
	
	#Opening a new file to put in those variables
#	var dir = Directory.new()
#	if !dir.dir_exists(SAVE_DIR):
#		dir.make_dir_recursive(SAVE_DIR)
#
#	var file = File.new()
#	var error = file.open_encrypted_with_pass(save_path, _File.WRITE, "res://Saved_Files/")
#	if error == OK:
#		file.store_var(data)
#		file.close()
#	console_write("Go peacefully")

	if Input.is_action_just_pressed("interact"):

		if not content.empty():
			$Dialogue.display_text(self, content)

func dialogEnded():
	$AudioStreamPlayer.play()












#const SaveGame = preload('res://Checkpoint/save/SaveGame.gd')
## TODO: Use project setting to save to res://debug vs user://
#var SAVE_FOLDER: String = "res://debug/save"
#var SAVE_NAME_TEMPLATE: String = "save_%03d.tres"
#
#
#func save(id: int):
#	# Passes a SaveGame resource to all nodes to save data from
#	# and writes it to the disk
#	var save_game := SaveGame.new()
#	save_game.game_version = ProjectSettings.get_setting("application/config/version")
#	for node in get_tree().get_nodes_in_group('save'):
#		node.save(save_game)
#
#	var directory: Directory = Directory.new()
#	if not directory.dir_exists(SAVE_FOLDER):
#		directory.make_dir_recursive(SAVE_FOLDER)
#
#	var save_path = SAVE_FOLDER.plus_file(SAVE_NAME_TEMPLATE % id)
#	var error: int = ResourceSaver.save(save_path, save_game)
#	if error != OK:
#		print('There was an issue writing the save %s to %s' % [id, save_path])
