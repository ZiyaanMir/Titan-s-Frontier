extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Start.grab_focus()

func _on_start_pressed():
	get_tree().change_scene_to_file("res://Scence/Intro.tscn")


func _on_options_pressed():
	get_tree().change_scene_to_file("res://Menu/option_menu.tscn")

func _on_quit_pressed():
	get_tree().quit()
