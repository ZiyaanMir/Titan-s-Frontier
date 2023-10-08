extends Sprite2D

var timer = 0
var wait_time = 2

func _physics_process(delta):
	if(Dialogue.df_d5 == true and Dialogue.df_d6 == false):
		visible = true
		PlayerDetect.player_can_move = false
	if(is_visible_in_tree()):
		timer += delta
	if timer>wait_time:
		visible = false
		Dialogue.df_d6 = true
		timer = 0
