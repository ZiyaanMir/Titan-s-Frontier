extends Sprite2D

func _physics_process(delta):
	if(Story.mf_c1 == false and Story.db_c1 == true):
		visible = true
	else:
		visible = false
