extends KinematicBody

export var speed = 5.0

var velocity = Vector3.ZERO

func _physics_process(_delta):
	var direction = Vector3.ZERO
	
	# todo: decision making for when to move and when not to move
	if true:
		direction.x -= 1.0
	if false:
		direction.x += 1.0
	
	if direction != Vector3.ZERO:
		$Pivot.look_at(translation - direction, Vector3.UP)
	
	velocity = direction * speed
	
	velocity = move_and_slide(velocity, Vector3.UP)
