extends Area2D


func _on_body_entered(body):
	if(body.name == "Player"):
		print("hello")
		Story.w_t1 = true

