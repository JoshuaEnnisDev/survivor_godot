extends CharacterBody2D

const MAX_SPEED = 50

@onready var health_component: HealthComponent = $HealthComponent


func _process(_delta):
	var direction = get_direction_to_player()
	velocity = direction * MAX_SPEED
	move_and_slide()


func get_direction_to_player():
	var player_node : Node2D = get_tree().get_first_node_in_group("player")
	if player_node != null:
		return (player_node.global_position - global_position).normalized()
	return Vector2.ZERO

