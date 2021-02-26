# Author : Vivek Tiwari
extends Button
func _ready():
	pass

func _on_menubtn_pressed():
	get_tree().paused = false
	$Popup.hide()
	get_tree().change_scene("res://main_menu/Main Menu.tscn")
