extends Sprite2D

var timer = 0
var wait_time = 8

func _physics_process(delta):

	if(Dialogue.mf_d1 == true and Dialogue.mf_d2 == false):
		visible = true
	if(is_visible_in_tree()):
		timer += delta
	if timer>wait_time:
		visible = false
		Dialogue.mf_d2 = true
		timer = 0
