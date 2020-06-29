extends PopupMenu

func maj_objects_in_menu(inventory):
	clear()
	var idx = 0
	for item in inventory.items:
		var qty = inventory.items[item]
		add_item(str(item) + "  " + str(qty), idx)
		set_item_metadata(idx, item)
		idx += 1

func _on_Items_id_pressed(ID):
	var item = get_item_metadata(ID)
	if item == "Health Potion":
		PlayerData.player.health_change(50)
	
	if item == "Mana Potion":
		PlayerData.player.mana_change(100)
		
	if item == "Time Potion":
		PlayerData.player.time_change(1000)
	
	PlayerData.player.inventory.add(item, -1)

func _on_Items_about_to_show():
	maj_objects_in_menu(PlayerData.inventory)
