extends Sprite2D

var timer = 0
var wait_time = 10

func _physics_process(delta):

	if(Dialogue.df_d1 == true and Dialogue.df_d2 == false):
		visible = true
		PlayerDetect.player_can_move = false
	if(is_visible_in_tree()):
		timer += delta
	if timer>wait_time:
		visible = false
		Dialogue.df_d2 = true
		Story.f_c1 = true
		PlayerDetect.player_can_move = true
		timer = 0
