extends XROrigin3D

@onready var function_pointer: XRToolsFunctionPointer = $rightHandController/FunctionPointer

func _physics_process(_delta):
	var button_action = function_pointer.active_button_action
	if Input.is_action_pressed(button_action):
		var collision = function_pointer.get_collision()
		if collision:
			var collider = collision.collider
			if collider:
				print("Collided with: ", collider.name)
				# Your custom interaction here
