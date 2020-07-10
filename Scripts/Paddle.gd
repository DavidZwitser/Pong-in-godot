extends KinematicBody2D

var velocity: float = 0;
var speed: float = .4;

func _process(delta):
	
	velocity *= .95;
	
	if Input.is_key_pressed(KEY_W) and name == 'Player1' or Input.is_key_pressed(KEY_UP) and name == 'Player2':
		velocity -= speed
		
	if Input.is_key_pressed(KEY_S) and name == 'Player1' or Input.is_key_pressed(KEY_DOWN) and name == 'Player2':
		velocity += speed

	if position.y + velocity < 95 or position.y + velocity > get_viewport_rect().size.y:
		velocity = 0

	position.y += velocity
	
