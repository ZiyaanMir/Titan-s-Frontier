extends Sprite2D

var timer = 0
var wait_time = 12

func _physics_process(delta):

	if(Input.is_action_pressed("action") and PlayerDetect.dc_detect and Dialogue.dc_d3 == false and Story.dc_c2 == false and Story.dcom_c1 == true):
		PlayerDetect.player_can_move = false
		visible = true
	if(is_visible_in_tree()):
		timer += delta
	if timer>wait_time:
		visible = false
		Dialogue.dc_d3 = true
		PlayerDetect.player_can_move = true
		timer = 0
		
