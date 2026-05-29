extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var horizontal := Input.get_axis("ui_left", "ui_right")
	var vertical := Input.get_axis("ui_up", "ui_down")
	var direction := Vector2(horizontal, vertical)
	
	velocity = direction.normalized() * SPEED;

	move_and_slide()
