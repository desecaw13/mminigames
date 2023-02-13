extends KinematicBody


func _ready():
	randomize()

func _on_Timer_timeout():
	if randi() % 2 == 0:
		print("Chomp!")
	
	$Timer.wait_time = randi() % 4 + 2
