extends Sprite2D

func _physics_process(delta):
	if(Story.db_c2 == true and Story.wanal_t1 == false):
		visible = true
	else:
		visible = false
