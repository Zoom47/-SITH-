tool
extends Area2D


export(String, FILE) var next_scene_path: = ""


func _get_configuration_warning() -> String:
	return "The property Next Level can't be empty" if next_scene_path == "" else ""

func _on_body_entered(body: PhysicsBody2D):
	$AudioStreamPlayer.play()
	get_tree().change_scene(next_scene_path)
