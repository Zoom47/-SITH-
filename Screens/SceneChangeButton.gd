tool
extends Button

#const SaveGame = preload('res://Checkpoint/save/SaveGame.gd')
## TODO: Use project setting to save to res://debug vs user://
#var SAVE_FOLDER: String = "res://debug/save"
#var SAVE_NAME_TEMPLATE: String = "save_%03d.tres"


export(String, FILE) var next_scene_path: = ""


func _on_button_up() -> void:
	PlayerData.reset()
	get_tree().change_scene(next_scene_path)

#	var file = File.new()
#	if file.file_exists(save_path):
#		var error = file.open_encrypted_with_pass(save_path, FILE.READ, "")
#		if error == OK:
#			var player_data = file.get_var()
#			file.close()
#			consol_write(player_data)

func _get_configuration_warning() -> String:
	return "The property Next Level can't be empty" if next_scene_path == "" else ""
	
#func load(id: int):
#	# Reads a saved game from the disk and delegates loading
#	# to the individual nodes to load
#	var save_file_path: String = SAVE_FOLDER.plus_file(SAVE_NAME_TEMPLATE % id)
#	var file: File = File.new()
#	if not file.file_exists(save_file_path):
#		print("Save file %s doesn't exist" % save_file_path)
#		return
#
#	var save_game: Resource = load(save_file_path)
#	for node in get_tree().get_nodes_in_group('save'):
#		node.load(save_game)
