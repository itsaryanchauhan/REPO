extends Control

var current_index = 0     #less than 3 only

var india_option_1 = [
	["Right to Freedom of Speech and Expression (Article 19)", 10, 10, 10, 10, 10],
	["Article 124: Establishes the Supreme Court of India", 10, 10, 10, 10, 10],
	["Articles 79-122: Parliament Structure and Procedures", 10, 10, 10, 10, 10]
]

var india_option_2 = [
	["Right to Equality (Article 14)", 10, 10, 10, 10, 10],
	["Article 226: Power of High Courts to issue certain writs", 10, 10, 10, 10, 10],
	["Article 107-108: Procedure for Passing Bills", 10, 10, 10, 10, 10]
]

var india_option_3 = [
	["Right to Privacy (Article 21)", 10, 10, 10, 10, 10],
	["Article 124(2): Appointment of Supreme Court Judges", 10, 10, 10, 10, 10],
	["Article 118: Rules of Procedure", 10, 10, 10, 10, 10]
]

var india_option_4 = [
	["Right to Freedom of Religion (Articles 25-28)", 10, 10, 10, 10, 10],
	["Article 32: Right to Constitutional Remedies", 10, 10, 10, 10, 10],
	["Articles 107-111: Legislative Procedure", 10, 10, 10, 10, 10]
]

var india_option_5 = [
	["Right to Education (Article 21A)", 10, 10, 10, 10, 10],
	["Article 145: Rules of court, etc.", 10, 10, 10, 10, 10],
	["Article 111: Assent to Bills", 10, 10, 10, 10, 10]
]


func _on_option_1_pressed():
	Global.save_article(0, india_option_1[current_index][0])  
	Global.main_bar[0] = india_option_1[current_index][1]
	Global.office_bar[0] = india_option_1[current_index][2]
	Global.market_bar[0] = india_option_1[current_index][3]
	Global.home_bar[0] = india_option_1[current_index][4]
	Global.shop_bar[0] = india_option_1[current_index][5]
	update_display()

func _on_option_2_pressed():
	Global.save_article(1, india_option_2[current_index][0])
	Global.main_bar[1] = india_option_2[current_index][1]
	Global.office_bar[1] = india_option_2[current_index][2]
	Global.market_bar[1] = india_option_2[current_index][3]
	Global.home_bar[1] = india_option_2[current_index][4]
	Global.shop_bar[1] = india_option_2[current_index][5]
	update_display()

func _on_option_3_pressed():
	Global.save_article(2, india_option_3[current_index][0])
	Global.main_bar[2] = india_option_3[current_index][1]
	Global.office_bar[2] = india_option_3[current_index][2]
	Global.market_bar[2] = india_option_3[current_index][3]
	Global.home_bar[2] = india_option_3[current_index][4]
	Global.shop_bar[2] = india_option_3[current_index][5]
	update_display()

func _on_option_4_pressed():
	Global.save_article(3, india_option_4[current_index][0])
	Global.main_bar[3] = india_option_4[current_index][1]
	Global.office_bar[3] = india_option_4[current_index][2]
	Global.market_bar[3] = india_option_4[current_index][3]
	Global.home_bar[3] = india_option_4[current_index][4]
	Global.shop_bar[3] = india_option_4[current_index][5]
	update_display()

func _on_option_5_pressed():
	Global.save_article(4, india_option_5[current_index][0])
	Global.main_bar[4] = india_option_5[current_index][1]
	Global.office_bar[4] = india_option_5[current_index][2]
	Global.market_bar[4] = india_option_5[current_index][3]
	Global.home_bar[4] = india_option_5[current_index][4]
	Global.shop_bar[4] = india_option_5[current_index][5]
	update_display()

func _ready():
	update_display()

func update_display():
	var selected_articles = Global.get_selected_articles()
	var display_text = "Selected Articles:\n"
	
	for article in selected_articles:
		display_text += "- " + article + "\n"
	
	$Label.text = display_text



func _on_cross_pressed() -> void:
	get_tree().change_scene_to_file("res://SCENES/6_office/office_popup_1.tscn")
