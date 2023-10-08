extends Sprite2D

func _physics_process(delta):
	if(((Story.dfly_c1 == true and Story.dc_c1 == false) or (Story.dcom_c1 == true and Story.dc_c2 == false)) and get_tree().get_current_scene().get_name() == "Indoor Lab"):
		visible = true
	else:
		visible = false
		
		
