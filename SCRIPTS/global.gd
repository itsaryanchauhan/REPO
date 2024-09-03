# Global.gd
extends Node

var selected_articles = ["", "", "", "", ""]  # Array for the selected articles






func save_article(article_position, article_text):
	selected_articles[article_position] = article_text

func get_selected_articles():
	return selected_articles
