# Author : Vivek Tiwari
extends Control
func _ready():
	var sound = get_node("AudioStreamPlayer")
	sound.playing = true
	pass
func _on_playbtn_pressed():
	get_tree().change_scene("res://levels/Levels.tscn")

func _on_settingsbtn_pressed():
	get_tree().change_scene("res://settings/Settings.tscn")
	pass

func _on_exitbtn_pressed():
	get_tree().quit()
	pass
