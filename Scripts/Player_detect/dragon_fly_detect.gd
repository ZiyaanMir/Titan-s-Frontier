extends Area2D

func _on_body_entered(body):
	if(body.name == "Player"):
		PlayerDetect.dragon_fly_detect = true


func _on_body_exited(body):
	if(body.name == "Player"):
		PlayerDetect.dragon_fly_detect = false
	
func _physics_process(delta):
	if( Input.is_action_just_pressed("action") and Story.mf_c1 and Story.dfly_t1 == false):
		get_tree().change_scene_to_file("res://dragonFly.tscn")
