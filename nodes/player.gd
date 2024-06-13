extends CharacterBody2D


const SPEED = 300.0

func _physics_process(delta):
	
	var dir: Vector2 = Input.get_vector("izquierda", "derecha", "ariiba", "abajo")
	
	if dir:
		
		if dir.x != 0:
			if dir.x > 0:
				$ani.play("derecha")
				pass
			else:
				$ani.play("izquierda")
				
			pass
		else:
			if dir.y > 0:
				$ani.play("abajo")
				pass
			else:
				$ani.play("arriba")
				
			pass
		
		pass
	else:
		$ani.stop()
		#$ani.frame = 0
		pass
	
	
	velocity = dir * SPEED
	move_and_slide()
	
	pass
