# Author : Vivek Tiwari
extends Area2D
# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite/AnimationPlayer.play("default")
	pass # Replace with function body.
#TODO: Make the animation player again and assign same animation names as animatedsprite
func _on_gem_area_entered(area):
	if area.is_in_group("player"):
		queue_free()
	pass
