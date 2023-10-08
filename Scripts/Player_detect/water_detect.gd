extends Area2D


func _on_body_entered(body):
	if(body.name == "Player"):
		PlayerDetect.water_detect = true

func _on_body_exited(body):
	if(body.name == "Player"):
		PlayerDetect.water_detect = false

func _physics_process(delta):
	if(Input.is_action_just_pressed("action") and Story.db_c2 == true and Story.wanal_t1 == false and PlayerDetect.water_detect):
		get_tree().change_scene_to_file("res://Scence/water_task.tscn")
