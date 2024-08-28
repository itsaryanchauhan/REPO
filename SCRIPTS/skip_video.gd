extends Control

func _ready():
	var skip_button = $skip_button



	if skip_button:
		skip_button.pressed.connect(_skip_button_pressed)
	else:
		print("Button4 not found")

	

func _skip_button_pressed():
	get_tree().change_scene_to_file("res://SCENES/4_black_screen.tscn")
