extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_backbtn_pressed():
	get_tree().change_scene("res://main_menu/Main Menu.tscn")
	
	pass # Replace with function body.


func _on_level_one_pressed():
	get_tree().change_scene("res://levels/LevelOne.tscn")
