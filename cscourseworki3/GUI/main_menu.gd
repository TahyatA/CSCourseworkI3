extends Control

func _ready() -> void:
	$MainMenu.visible = true
	$OptionsMenu.visible = false

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Game.tscn")


func _on_options_button_pressed() -> void:
	$MainMenu.visible = false
	$OptionsMenu.visible = true


func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_back_button_pressed() -> void:
	$MainMenu.visible = true
	$OptionsMenu.visible = false
