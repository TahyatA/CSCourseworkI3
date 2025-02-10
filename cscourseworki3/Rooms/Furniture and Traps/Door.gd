extends StaticBody2D

@onready var animation_player: AnimationPlayer = get_node("AnimationPlayer")
@onready var audio_player : AudioStreamPlayer2D = get_node("AudioStreamPlayer2D")

func open() -> void:
	audio_player.play()
	animation_player.play("open")
