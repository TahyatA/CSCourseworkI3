extends Weapon

const projectile: PackedScene = preload("res://Weapons/PlayerProjectile.tscn")


func shoot(offset: int) -> void:
	var arrow: Area2D = projectile.instantiate()
	get_tree().current_scene.add_child(arrow)
	arrow.launch(global_position, Vector2.LEFT.rotated(deg_to_rad(rotation_degrees + offset)), 400)


func triple_shoot() -> void:
	shoot(0)
	shoot(12)
	shoot(-12)
