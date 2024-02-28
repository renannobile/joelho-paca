extends CharacterBody2D

@export var speed = 400


func _process(delta):
	
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	velocity = input_direction * speed
	
	if velocity.x < 0:
		$Sprite.flip_h = true
	if velocity.x > 0:
		$Sprite.flip_h = false
	
	if velocity != Vector2.ZERO:
		move_and_slide()
		%AnimationPlayer.play("run")
	else:
		%AnimationPlayer.play("idle")
		
