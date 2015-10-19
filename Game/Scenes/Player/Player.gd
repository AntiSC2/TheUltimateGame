
extends KinematicBody2D

var direction = Vector2(0, 0);
var speed = Vector2(400, 400);
var motion = Vector2(0, 0);

func _fixed_process(delta):
	direction.x = 0;
	direction.y = 0;
	
	if(Input.is_action_pressed("move_right")):
		direction.x += 1;
	if(Input.is_action_pressed("move_up")):
		direction.y -= 1;
	if(Input.is_action_pressed("move_left")):
		direction.x -= 1;
	if(Input.is_action_pressed("move_down")):
		direction.y += 1;
	
	direction = direction.normalized();
	motion = direction * speed;
	motion *= delta;
	motion = move(motion);
	
	if(is_colliding()):
		var n = get_collision_normal();
		motion = n.slide(motion);
		move(motion);

func _ready():
	set_fixed_process(true);


