extends VideoStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_finished():
	Story.dfly_t1 = true
	get_tree().change_scene_to_file("res://Scence/Outdoor.tscn")
