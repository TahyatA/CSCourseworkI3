extends Enemy

var path = []

func _process(_delta: float) -> void:
	if is_instance_valid(player):
		if player.global_position.y > global_position.y:
			z_index = 0
		else:
			z_index = 1


func duplicate_slime() -> void:
	if scale > Vector2(1, 1):
		var impulse_direction: Vector2 = Vector2.RIGHT.rotated(randf_range(0, 2*PI))
		_spawn_slime(impulse_direction)
		_spawn_slime(impulse_direction * -1)


func _spawn_slime(direction: Vector2) -> void:
	var slime: CharacterBody2D = load("res://Characters/Enemies/Bosses/SlimeBoss.tscn").instantiate()
	slime.position = position
	slime.scale = scale/2
	slime.hp = max_hp/2.0
	slime.max_hp = max_hp/2.0
	get_parent().add_child(slime)
	slime.velocity += direction * 150

func move() -> void:
	if path.size() >= 2:  # Ensure path has a destination
		var direction = (path[1] - path[0]).normalized()  # Move towards player
		velocity = direction * 150  # Adjust speed as needed
		move_and_slide()  # Apply movement
