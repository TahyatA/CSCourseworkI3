extends Node2D


func _init() -> void:
	randomize()

func ready():
	SceneTransistor.change_scene_to_file()


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("reset"):
		get_tree().reload_current_scene()
	
