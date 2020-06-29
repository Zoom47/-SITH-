extends PopupMenu

func _ready():
	$Items.set_name("Items")
	add_submenu_item("Items", "Items")
