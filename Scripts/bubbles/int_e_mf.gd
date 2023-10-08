extends Sprite2D

func _physics_process(delta):
	if (Story.db_c1 == true and Story.mf_c1 == false):
		visible = true
	else:
		visible = false
