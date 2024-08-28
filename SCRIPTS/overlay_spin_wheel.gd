extends Control

func _ready():
	show()  # Show the overlay as soon as the scene loads

func _on_texture_button_pressed():
	print("Button pressed!")  # This should print to the output console
	hide()  # Hide the overlay
