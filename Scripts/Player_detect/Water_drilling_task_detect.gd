extends Area2D

func _on_body_entered(body):
	if(body.name == "Player"):
		PlayerDetect.water_drilling_detect = true


func _on_body_exited(body):
	if(body.name == "Player"):
		PlayerDetect.water_drilling_detect = false

func _physics_process(delta):
	if(Input.is_action_just_pressed("action") and Story.f_c1 and Story.w_t1 == false and PlayerDetect.water_drilling_detect):
		get_tree().change_scene_to_file("res://Scence/maze.tscn")
		
		
		
