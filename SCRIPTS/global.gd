# Global.gd
extends Node

var selected_options = []

func save_selection(scene_index, option):
	if selected_options.size() <= scene_index:
		selected_options.resize(scene_index + 1)  # Resize the array if it's too small
	selected_options[scene_index] = option
