extends Sprite2D

var timer = 0
var wait_time = 12

func _physics_process(delta):

	if(Dialogue.mf_d3 == true and Dialogue.mf_d4 == false):
		visible = true
	if(is_visible_in_tree()):
		timer += delta
	if timer>wait_time:
		visible = false
		Dialogue.mf_d4 = true
		timer = 0
