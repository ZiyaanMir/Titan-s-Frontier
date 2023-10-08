extends Sprite2D

var timer = 0
var wait_time = 10

func _physics_process(delta):

	if(Dialogue.dc_d3 == true and Dialogue.dc_d4 == false):
		PlayerDetect.player_can_move = false
		visible = true
	if(is_visible_in_tree()):
		timer += delta
	if timer>wait_time:
		visible = false
		Dialogue.dc_d4 = true
		PlayerDetect.player_can_move = true
		timer = 0
		
