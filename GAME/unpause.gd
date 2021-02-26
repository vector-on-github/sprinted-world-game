# Author : Vivek Tiwari
extends Button
func _ready():
	pass

func _on_unpause_pressed():
	get_tree().paused = false;
	$Popup.hide()
