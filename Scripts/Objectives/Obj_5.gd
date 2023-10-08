extends Sprite2D

func _physics_process(delta):
	if(Story.dc_c1 == true and Story.dcom_t1 == false and get_tree().get_current_scene().get_name() == "Indoor Lab"):
		visible = true
	else:
		visible = false
		
