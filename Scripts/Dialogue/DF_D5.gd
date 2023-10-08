extends Sprite2D

var timer = 0
var wait_time = 5

func _physics_process(delta):
	if(Dialogue.df_d5 == false and Story.w_t1 == true):
		visible = true
		PlayerDetect.player_can_move = false
	if(is_visible_in_tree()):
		timer += delta
	if timer>wait_time:
		visible = false
		Dialogue.df_d5 = true
		timer = 0
