extends KinematicBody

export var speed = 5.0

var velocity = 0.0

func _physics_process(delta):
	var direction = 0.0
	
	if Input.is_action_pressed("move_down"):
		direction -= 1.0
	if Input.is_action_pressed("move_up"):
		direction += 1.0
	
	velocity = direction * speed
	
	velocity = move_and_slide(Vector3(velocity, 0, 0), Vector3.UP).x
