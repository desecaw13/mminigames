extends KinematicBody

export var speed = 5.0

var velocity = Vector3.ZERO

func _physics_process(_delta):
	var direction = Vector3.ZERO
	
	if Input.is_action_pressed("move_down"):
		
		direction.x -= 1.0
	if Input.is_action_pressed("move_up"):
		direction.x += 1.0
	
	if direction != Vector3.ZERO:
		$Pivot.look_at(translation - direction, Vector3.UP)
	
	velocity = direction * speed
	
	velocity = move_and_slide(velocity, Vector3.UP)

func _on_Button1_on_state_changed(value):
	print(value)
