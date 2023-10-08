extends Sprite2D

var timer = 0
var wait_time = 12

func _physics_process(delta):

	if(Dialogue.dc_d1 == true and Dialogue.dc_d2 == false):
		PlayerDetect.player_can_move = false
		visible = true
	if(is_visible_in_tree()):
		timer += delta
	if timer>wait_time:
		visible = false
		Dialogue.dc_d2 = true
		Story.dc_c1 = true
		PlayerDetect.player_can_move = true
		timer = 0
		
