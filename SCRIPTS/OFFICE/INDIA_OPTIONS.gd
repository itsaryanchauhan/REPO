# ExampleScene.gd
extends Control

var scene_index = 1  # Set this index uniquely for each scene (0 for Scene1, 1 for Scene2, etc.)

func _ready():
	update_display()

func _on_option_1_pressed() -> void:
	Global.save_selection(scene_index, "Option 1")
	update_display()

func _on_option_2_pressed() -> void:
	Global.save_selection(scene_index, "Option 2")
	update_display()


func _on_option_3_pressed() -> void:
	Global.save_selection(scene_index, "Option 3")
	update_display()


func _on_option_4_pressed() -> void:
	Global.save_selection(scene_index, "Option 4")
	update_display()


func _on_option_5_pressed() -> void:
	Global.save_selection(scene_index, "Option 5")
	update_display()

func update_display():
	$Label.text = str(Global.selected_options)


func _on_cross_pressed() -> void:
	get_tree().change_scene_to_file("res://SCENES/6_office/office_popup_1.tscn")
