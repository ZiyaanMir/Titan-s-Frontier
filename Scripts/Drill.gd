extends StaticBody2D

func _physics_process(delta):
	if(PlayerDetect.drill_detect and Input.is_action_just_pressed("action") and Story.dc_c2 == true and Story.pick_up_drill == false):
		Story.pick_up_drill = true
		visible = false
	if(Story.pick_up_drill):
		visible = false
