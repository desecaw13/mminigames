extends Area

var is_on = false

signal on_state_changed(value)

func _on_Button_body_entered(body : PhysicsBody):
	if body is KinematicBody:
		print(body.name)
		
		is_on = not is_on
		
		emit_signal("on_state_changed", is_on)
