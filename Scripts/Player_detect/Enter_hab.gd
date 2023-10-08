extends Area2D

var player_detect = false

func _on_body_entered(body):
	if(body.name == "Player"):
		player_detect = true

func _on_body_exited(body):
	player_detect = false

func _physics_process(delta):
	if(Input.is_action_just_pressed("action") and player_detect):
		get_tree().change_scene_to_file("res://Scence/indoor_lab.tscn")
