extends Area2D



func _on_body_entered(body):
	PlayerDetect.drill_detect = true


func _on_body_exited(body):
	PlayerDetect.drill_detect = false
