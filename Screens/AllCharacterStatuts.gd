extends Popup

var CharacterStatus = preload("res://General/Scenes/CharacterStatus.tscn")
onready var vbox = $VBoxContainer

func update_status():
	for child in $VBoxContainer.get_children():
		$VBoxContainer.remove_child(child)
	for character in PlayerVariables.team:
		var characters_status = CharacterStatus.instance(0)
		characters_status.update_status(character)
		$VBoxContainer.add_child(characters_status)

func _on_AllCharacterStatuts_about_to_show():
	update_status()
