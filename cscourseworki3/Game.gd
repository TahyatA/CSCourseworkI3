extends Node2D


func _init() -> void:
	randomize()

func ready():
	SceneTransistor.change_scene_to_file()


func _input(event: InputEvent) -> void:
	pass
	#if event.is_action_pressed("ui_focus_next"):
		#get_tree().paused = true	
	
