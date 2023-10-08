extends Sprite2D

var timer = 0
var wait_time = 2

func _physics_process(delta):

	if (Dialogue.dfly_d8 == true and Dialogue.dfly_d9 == false):
		PlayerDetect.player_can_move = false
		visible = true
	if(is_visible_in_tree()):

		timer += delta
	if timer>wait_time:
		visible = false
		Dialogue.dfly_d9 = true
		Story.dfly_c1 = true
		PlayerDetect.player_can_move = true
		timer = 0
