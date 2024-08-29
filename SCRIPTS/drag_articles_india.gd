extends RichTextLabel

var dragging = false

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			dragging = event.pressed
	elif event is InputEventMouseMotion and dragging:
		var new_position = position + event.relative

		# Define the grid size
		var grid_size = Vector2(32, 32)  # Adjust grid size as needed
		
		# Snap to the nearest grid point
		new_position.x = round(new_position.x / grid_size.x) * grid_size.x
		new_position.y = round(new_position.y / grid_size.y) * grid_size.y
		
		position = new_position
