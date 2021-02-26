# Author : Vivek Tiwari
extends Control
func _ready():
	pass
func _on_backbtn_pressed():
	get_tree().change_scene("res://main_menu/Main Menu.tscn")
	pass
func _on_level_one_pressed():
	get_tree().change_scene("res://levels/LevelOne.tscn")
