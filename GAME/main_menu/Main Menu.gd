extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var sound = get_node("AudioStreamPlayer")
	sound.playing = true
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_playbtn_pressed():
	get_tree().change_scene("res://levels/Levels.tscn") # Replace with function body.


func _on_settingsbtn_pressed():
	get_tree().change_scene("res://settings/Settings.tscn")
	pass # Replace with function body.


func _on_exitbtn_pressed():
	get_tree().quit()
	pass # Replace with function body.
