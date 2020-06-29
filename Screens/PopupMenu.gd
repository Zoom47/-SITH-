extends PopupMenu

var active = false

func _ready():
	add_submenu_item("PopupInventory", "Inventory")
	$PopupInventory.set_name("Inventory")

	
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		if  !active:
			popup()
		else:
			hide()


func _on_PopupMenu_id_pressed(ID):
	if ID == 1:
		get_tree().quit()
#	if ID == 8:
#		$PopupInventory.popup_centered()
	if ID == 2:
		$AllCharacterStatuts.popup_centered()
	if ID == 3:
		hide()


func _on_PopupMenu_about_to_show():
	get_tree().paused = true
	active = true

func _on_PopupMenu_popup_hide():
	get_tree().paused = false
	active = false
