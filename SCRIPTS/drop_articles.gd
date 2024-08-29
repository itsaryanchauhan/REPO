extends Area2D

func _on_Area2D_body_entered(body):
	if body is RichTextLabel:
		# Execute code or trigger event when text is dropped in the target area
		print("Text dropped in target area")
		
		# Example: Add a line of code or trigger some functionality
		# Adjust the following line according to your game logic
		get_tree().root.get_node("PathToCodeNode").add_something(body.text)
