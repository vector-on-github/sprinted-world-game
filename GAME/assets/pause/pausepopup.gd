# Author : Vivek Tiwari
extends Control
func _ready():
	pass

func _on_stopbtn_pressed():
	get_tree().paused = true
	$Popup.show()
	
func _on_Resume_pressed():
	get_tree().paused = false
	$Popup.hide()
	
func _on_menu_pressed():
	get_tree().paused = false
	$Popup.hide()
	get_tree().change_scene("res://main_menu/Main Menu.tscn")
	pass
