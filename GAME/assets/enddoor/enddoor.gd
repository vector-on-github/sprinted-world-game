# Author : Vivek Tiwari
extends Area2D
func _ready():
	pass
	
	
func _on_enddoor_area_entered(area):
	if area.is_in_group("player"):
		get_tree().change_scene("res://levels/Levels.tscn")
