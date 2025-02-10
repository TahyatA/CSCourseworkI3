extends Control


func _on_back_to_menu_pressed() -> void:
	SceneTransistor.start_transition_to("res://GUI/main_menu.tscn")
	SavedData.reset_data()


func _on_continue_pressed() -> void:
	SceneTransistor.start_transition_to("res://Game.tscn")
