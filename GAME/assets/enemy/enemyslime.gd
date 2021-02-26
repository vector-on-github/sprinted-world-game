# Author : Vivek Tiwari
extends Area2D
var health = 30
var dead = false
func _ready():
	pass

func _process(delta):

	if dead == false:
		$AnimatedSprite.play("idleslime")


func _on_enemyslime_area_entered(area):
	if area.is_in_group("sword"):
		if health < 5:
			dead = true
			$AnimatedSprite.play("die")
		elif dead == false:
			health = health - 10
			if health < 20 && dead == false:
				$AnimatedSprite.play("hurt")
			print(health)


func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "die":
		queue_free()
