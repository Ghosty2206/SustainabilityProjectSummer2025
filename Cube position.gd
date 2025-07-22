extends Node3D


@onready var cube1 = $Cube1
@onready var cube2 = $Cube2

var cube1_start_position
var cube2_start_position

func _ready():
	cube1_start_position = cube1.global_transform
	cube2_start_position = cube2.global_transform
	
func reset_cubes():
	cube1.global_transform = cube1_start_position
	cube1.linear_velocity = Vector3.ZERO
	cube1.angular_velocity = Vector3.ZERO

	cube2.global_transform = cube2_start_position
	cube2.linear_velocity = Vector3.ZERO
	cube2.angular_velocity = Vector3.ZERO
