extends Control

func _ready():
	var button1 = $office
	var button2 = $living_room
	var button3 = $market
	var button4 = $shopping_mall
	var enter_city_button = $enter_city
	var spin_the_wheel_button = $spin_the_wheel
	var constitution_quiz_button = $constitution_quiz
	var website_button = $website_button
	
	if button1:
		button1.pressed.connect(_on_Button1_pressed)
	else:
		print("Button1 not found")

	if button2:
		button2.pressed.connect(_on_Button2_pressed)
	else:
		print("Button2 not found")

	if button3:
		button3.pressed.connect(_on_Button3_pressed)
	else:
		print("Button3 not found")
		
	if button4:
		button4.pressed.connect(_on_Button4_pressed)
	else:
		print("Button4 not found")
		
	if enter_city_button:
		enter_city_button.pressed.connect(_on_enter_city_button_pressed)
	else:
		print("Button4 not found")
		
	if spin_the_wheel_button:
		spin_the_wheel_button.pressed.connect(_spin_button_pressed)
	else:
		print("Button4 not found")
		
	if constitution_quiz_button:
		constitution_quiz_button.pressed.connect(_quiz_button_pressed)
	else:
		print("Button4 not found")

	

func _on_Button1_pressed():
	get_tree().change_scene_to_file("res://SCENES/office.tscn")

func _on_Button2_pressed():
	get_tree().change_scene_to_file("res://SCENES/living_room.tscn")

func _on_Button3_pressed():
	get_tree().change_scene_to_file("res://SCENES/marketplace.tscn")
	
func _on_Button4_pressed():
	get_tree().change_scene_to_file("res://SCENES/shopping_mall.tscn")

func _on_enter_city_button_pressed():
	get_tree().change_scene_to_file("res://SCENES/office.tscn")
	
func _spin_button_pressed():
	get_tree().change_scene_to_file("res://SCENES/5a_spin_the_wheel.tscn")
	
func _quiz_button_pressed():
	get_tree().change_scene_to_file("res://SCENES/5b_constitution_quiz.tscn")

	
func _on_website_button_pressed():
	OS.shell_open("https://harsh16bhardwaj.github.io/San_Sam/")

func _on_crossbutton_pressed() -> void:
	pass # Replace with function body.


func _on_document_button_pressed() -> void:
	get_tree().change_scene_to_file("res://SCENES/office_popup_1.tscn")
