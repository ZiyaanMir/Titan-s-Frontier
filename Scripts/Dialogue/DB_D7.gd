extends Sprite2D

var timer = 0
var wait_time = 10

func _physics_process(delta):

	if(Input.is_action_pressed("action") and PlayerDetect.db_detect and Dialogue.db_d7 == false and Story.w_t1 == true):
		PlayerDetect.player_can_move = false
		visible = true
	if(is_visible_in_tree()):
		timer += delta
	if timer>wait_time:
		visible = false
		Dialogue.db_d7 = true
		PlayerDetect.player_can_move = true
		timer = 0
		
