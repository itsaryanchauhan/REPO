extends Control

func _ready():
	update_display()
	
func update_display():
	var selected_articles = Global.get_selected_articles()
	$Label.text = "Selected Articles:\n" + str(selected_articles)
