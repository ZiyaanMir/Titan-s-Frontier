extends Sprite2D

var timer = 0
var wait_time = 8

func _physics_process(delta):

	if (Dialogue.dfly_d6 == true and Dialogue.dfly_d7 == false):
		PlayerDetect.player_can_move = false
		visible = true
	if(is_visible_in_tree()):

		timer += delta
	if timer>wait_time:
		visible = false
		Dialogue.dfly_d7 = true
		PlayerDetect.player_can_move = true
		timer = 0
