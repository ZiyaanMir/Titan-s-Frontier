extends CanvasLayer

@onready var code = get_node("TextureRect/LineEdit")

var passCode

# Called when the node enters the scene tree for the first time.
func _ready():
	code.grab_focus()



func _on_line_edit_text_submitted(passCode):
	if passCode == '2027':
		get_tree().change_scene_to_file("res://code_correct.tscn")
	else:
		get_tree().change_scene_to_file("res://incorrect_code.tscn")


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scence/Outdoor.tscn")
