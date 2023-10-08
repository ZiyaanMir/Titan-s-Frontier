extends Sprite2D


var timer = 0
var wait_time = 8

func _physics_process(delta):

	if(Input.is_action_pressed("action") and PlayerDetect.db_detect and Dialogue.db_d1 == false and Story.db_c1 == false):
		PlayerDetect.player_can_move = false
		visible = true
	if(is_visible_in_tree()):
		timer += delta
	if timer>wait_time:
		visible = false
		Dialogue.db_d1 = true
		PlayerDetect.player_can_move = true
		timer = 0
		
	

