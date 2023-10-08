extends Sprite2D

var timer = 0
var wait_time = 10

func _physics_process(delta):

	if(Dialogue.db_d9 == true and Dialogue.db_d10 == false):
		PlayerDetect.player_can_move = false
		visible = true
	if(is_visible_in_tree()):

		timer += delta
	if timer>wait_time:
		visible = false
		Dialogue.db_d10 = true
		PlayerDetect.player_can_move = true
		Story.db_c2 = true
		timer = 0
