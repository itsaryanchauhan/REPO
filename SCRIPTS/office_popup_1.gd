extends Node


func _on_india_pressed() -> void:
	get_tree().change_scene_to_file("res://SCENES/6_office/office_popup_2I.tscn")


func _on_north_korea_pressed() -> void:
	get_tree().change_scene_to_file("res://SCENES/6_office/office_popup_4nk.tscn")


func _on_russia_pressed() -> void:
	get_tree().change_scene_to_file("res://SCENES/6_office/office_popup_5r.tscn")


func _on_uk_pressed() -> void:
	get_tree().change_scene_to_file("res://SCENES/6_office/office_popup3uk.tscn")


func _on_blur_background_pressed() -> void:
	get_tree().change_scene_to_file("res://SCENES/office.tscn")
