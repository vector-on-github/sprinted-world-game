# Author : Vivek Tiwari
extends KinematicBody2D

const GRAVITY = 900
const WALK_SPEED = 350
const JUMP_SPEED = 500
var attacking = false
var velocity = Vector2()
# var screen_size = get_viewport_rect().size
func _physics_process(delta):
	$attackarea/attackimpact.disabled = true
	velocity.y += delta * GRAVITY
	
	if Input.is_action_pressed("left"):
		#$AnimatedSprite.animation = "run"
		$AnimatedSprite.play("run")
		$AnimatedSprite.flip_h = true
		velocity.x = -WALK_SPEED
	elif Input.is_action_pressed("right"):
		#$AnimatedSprite.animation = "run"
		$AnimatedSprite.play("run")
		$AnimatedSprite.flip_h = false
		velocity.x =  WALK_SPEED
	elif Input.is_action_pressed("up"):
		#$AnimatedSprite.animation = "jump"
		if is_on_floor():
			$AnimatedSprite.play("jump")
			velocity.y = -JUMP_SPEED
	elif !is_on_floor():
		#$AnimatedSprite.animation = "fall"
		$AnimatedSprite.play("fall")
	elif Input.is_action_pressed("attack") or Input.is_action_just_pressed("attack") or Input.is_action_just_released("attack"):
		$AnimatedSprite.play("attack")
		$attackarea/attackimpact.disabled = false
		attacking = true
	else:
		velocity.x = 0
		#$AnimatedSprite.animation = "idle"
		$AnimatedSprite.play("idle")
	move_and_slide(velocity, Vector2(0, -1))

#position.x = clamp(position.x, 0, screen_size.x)
#position.y = clamp(position.y, 0, screen_size.y)

func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "attack":
		$attackarea/attackimpact.disabled
		attacking = false
