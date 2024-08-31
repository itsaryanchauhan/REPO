extends Control

func _ready():
	update_display()
	
func update_display():
	var selected_articles = Global.get_selected_articles()
	var display_text = "Selected Articles:\n"
	
	for article in selected_articles:
		display_text += "- " + article + "\n"
	
	$Label.text = display_text
