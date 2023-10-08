extends Area2D

func _on_body_entered(body):
	if(body.name == "Player"):
		PlayerDetect.data_detect = true


func _on_body_exited(body):
	if(body.name == "Player"):
		PlayerDetect.data_detect = false

func _physics_process(delta):
	if(Input.is_action_just_pressed("action") and Story.dc_c1 == true and Story.dcom_t1 == false and PlayerDetect.data_detect):
		get_tree().change_scene_to_file("res://Scence/Data_upload.tscn")
