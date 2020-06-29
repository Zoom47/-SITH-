extends CanvasLayer

var content
var current = 0
var active = false
var panel
var label
var caller

func _ready():
	panel = $PopupPanel
	label = $PopupPanel/RichTextLabel

func display_text(_caller, texts):
		panel.popup()
		active = true
		content = texts.split('\n')
		current = 0
		get_tree().paused = true
		caller = _caller
#		next()
	
func next():

	if current < content.size():
		label.text = content[current]
		current += 1
	else :
		panel.hide()
		get_tree().paused = false
		active = false
		caller.dialogEnded()
#		get_tree().get_root().add_child(PlayerVariables.FightScene.instance(0))
#		print("end")


func _process(delta):
	if active :
		if Input.is_action_just_pressed("interact") :
#			print(current)
			next()
