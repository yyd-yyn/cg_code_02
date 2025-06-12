extends Node3D

var rotation_speed := 1.5
var vertical_rotation := 0.0

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		rotate_y(deg_to_rad(rotation_speed))
	if Input.is_action_pressed("ui_right"):
		rotate_y(deg_to_rad(-rotation_speed))

	if Input.is_action_pressed("ui_down"):
		vertical_rotation = clamp(vertical_rotation - deg_to_rad(rotation_speed), deg_to_rad(-80), deg_to_rad(80))
		$Camera3D.rotation.x = vertical_rotation
	if Input.is_action_pressed("ui_up"):
		vertical_rotation = clamp(vertical_rotation + deg_to_rad(rotation_speed), deg_to_rad(-80), deg_to_rad(80))
		$Camera3D.rotation.x = vertical_rotation
