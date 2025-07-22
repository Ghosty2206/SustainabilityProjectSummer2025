extends StaticBody3D

@onready var anim: AnimationPlayer = $AnimationPlayer
@export var target_node: NodePath

var can_press: bool = true
var can_unpress: bool = true

func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.name != "ButCol" and body.name != "Button" and can_press:
			anim.play("pressdown")
			can_press = false
			$CooldownTimer.start()
			if target_node != null:
				var node = get_node(target_node)
				if node.has_method("reset_cubes"):
					node.reset_cubes()
			


func _on_area_3d_body_exited(body: Node3D) -> void:
	if body.name != "ButCol" and body.name != "Button" and can_unpress:
			anim.play("pressup")
			can_unpress = false
			

func _on_cooldown_timer_timeout() -> void:
	can_press = true
	can_unpress = true
