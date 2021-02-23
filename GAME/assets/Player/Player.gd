extends KinematicBody2D

const GRAVITY = 900
const WALK_SPEED = 350
const JUMP_SPEED = 500
var velocity = Vector2()
# var screen_size = get_viewport_rect().size
func _physics_process(delta):
	velocity.y += delta * GRAVITY
	if Input.is_action_pressed("left"):
		$AnimatedSprite.animation = "run"
		$AnimatedSprite.play()
		$AnimatedSprite.flip_h = true
		velocity.x = -WALK_SPEED
	elif Input.is_action_pressed("right"):
		$AnimatedSprite.animation = "run"
		$AnimatedSprite.play()
		$AnimatedSprite.flip_h = false
		velocity.x =  WALK_SPEED
	elif Input.is_action_pressed("up"):
		$AnimatedSprite.animation = "jump"
		$AnimatedSprite.play()
		velocity.y = -JUMP_SPEED
	elif !is_on_floor():
		$AnimatedSprite.animation = "fall"
		$AnimatedSprite.play()
	else:
		velocity.x = 0
		$AnimatedSprite.animation = "idle"
		$AnimatedSprite.play()

	# We don't need to multiply velocity by delta because "move_and_slide" already takes delta time into account.

	# The second parameter of "move_and_slide" is the normal pointing up.
	# In the case of a 2D platformer, in Godot, upward is negative y, which translates to -1 as a normal.
	move_and_slide(velocity, Vector2(0, -1))



#position.x = clamp(position.x, 0, screen_size.x)
#position.y = clamp(position.y, 0, screen_size.y)
