extends Node3D

var ray: RayCast3D
var player: CharacterBody3D
var camera_object: Camera3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ray = $"../Camera Raycast"
	player = %"Player Base"
	camera_object = $Camera3D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	ray.target_position = position
	var otherCollider = ray.get_collider()
	
	if ray.is_colliding():
		camera_object.global_position = ray.get_collision_point()
	else:
		camera_object.position = position
		
	print(ray.get_collider())
