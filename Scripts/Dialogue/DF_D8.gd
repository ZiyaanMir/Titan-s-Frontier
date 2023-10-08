extends Sprite2D

var timer = 0
var wait_time = 5

func _physics_process(delta):
	if(Dialogue.df_d7 == true and Dialogue.df_d8 == false):
		visible = true
		PlayerDetect.player_can_move = false
	if(is_visible_in_tree()):
		timer += delta
	if timer > wait_time:
		visible = false
		Dialogue.df_d8 = true
		PlayerDetect.player_can_move = true
		get_tree().change_scene_to_file("res://Scence/Outdoor.tscn")
		timer = 0
