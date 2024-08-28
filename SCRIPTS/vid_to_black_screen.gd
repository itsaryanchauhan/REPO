extends Node2D

func _ready():
	$Control/Timer.start()  # Start the timer when the scene is ready

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://SCENES/4_black_screen.tscn")
