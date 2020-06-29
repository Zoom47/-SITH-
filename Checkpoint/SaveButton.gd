extends Button

var active = false

const SAVE_DIR = "user://saves/"

#onready var console_label = $

var save_path = SAVE_DIR + "save.dat"

func _on_SaveButton_button_up():
	
	#Pause the game
#	get_tree().paused = true
#	active = true
	
	#Variables that I want to save for the saved file
	var data = {
		"name" : "Zoom",
		"maxHp" : 100,
		"maxMana" : 200,
	}
	
	
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

	hide()


func _on_SaveButton_hide():

	get_tree().paused = false
	active = false
