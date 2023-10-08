extends Sprite2D

var timer = 0
var wait_time = 12

func _physics_process(delta):

	if(Dialogue.mf_d6 == true and Dialogue.mf_d7 == false):
		visible = true
	if(is_visible_in_tree()):
		timer += delta
	if timer>wait_time:
		visible = false
		Dialogue.mf_d7 = true
		Story.mf_c1 = true
		timer = 0
