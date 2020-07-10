extends KinematicBody2D

var velocity: Vector2 = Vector2()

signal miss(player)
signal hit_paddle(player, velocity)
signal hit_wall()

func _ready():
	restart()
	
func restart():
	position = get_viewport_rect().size / 2
	velocity = Vector2()
	
	yield(get_tree().create_timer(1.0), "timeout")
	
	velocity.x = 5 if randf() < .5 else -5

func _process(delta):
	
	if position.y < 0 or position.y > get_viewport_rect().size.y:
		velocity.y *= -1
		emit_signal("hit_wall")
		
	if position.x < 0 or position.x > get_viewport_rect().size.x:
		emit_signal("miss", 1 if position.x < 0 else 2)
		restart()
		
	position += velocity
	
func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	
	if collision_info:
		velocity.x *= -1
		
		emit_signal("hit_paddle", 1 if position.x < get_viewport_rect().size.x / 2 else 2, velocity.x)
		
		velocity.y += collision_info.collider_velocity.normalized().y * 2
