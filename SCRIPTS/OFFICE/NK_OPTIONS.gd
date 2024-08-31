extends Control

func _ready():
	update_display()

func _on_option_1_pressed():
	Global.save_article(0, "Country 4, Article 1")  # Position 0 corresponds to the first topic (e.g., equality)
	update_display()

func _on_option_2_pressed():
	Global.save_article(1, "Country 4, Article 2")  # Position 1 for the second topic (e.g., freedom)
	update_display()

func _on_option_3_pressed():
	Global.save_article(2, "Country 4, Article 3")  # Position 2 for the third topic (e.g., justice)
	update_display()

func _on_option_4_pressed():
	Global.save_article(3, "Country 4, Article 4")  # Position 3 for the fourth topic (e.g., security)
	update_display()

func _on_option_5_pressed():
	Global.save_article(4, "Country 4, Article 5")  # Position 4 for the fifth topic (e.g., development)
	update_display()

func update_display():
	var selected_articles = Global.get_selected_articles()
	var display_text = "Selected Articles:\n"
	
	for article in selected_articles:
		display_text += "- " + article + "\n"
	
	$Label.text = display_text



func _on_cross_pressed() -> void:
	get_tree().change_scene_to_file("res://SCENES/6_office/office_popup_1.tscn")
