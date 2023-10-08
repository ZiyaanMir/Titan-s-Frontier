extends Sprite2D

func _physics_process(delta):
	if((Story.db_c1 == false or (Story.w_t1 == true and Story.db_c2 == false) or (Story.wanal_t1 == true and Story.db_c3 == false)) and get_tree().get_current_scene().get_name() == "Indoor Lab"):
		visible = true
	else:
		visible = false
		
