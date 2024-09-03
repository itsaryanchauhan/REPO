# Global.gd
extends Node

var selected_articles = ["", "", "", "", ""]  # Array for the selected articles

var main_bar = [null,null,null,null,null]
var office_bar = [null,null,null,null,null]
var market_bar = [null,null,null,null,null]
var home_bar = [null,null,null,null,null]
var shop_bar = [null,null,null,null,null]




func save_article(article_position, article_text):
	selected_articles[article_position] = article_text

func get_selected_articles():
	return selected_articles
