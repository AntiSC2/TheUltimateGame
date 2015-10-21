
extends CollisionShape2D

var player_shape;

func _fixed_process(delta):
	var mat = Matrix32(0.0, get_pos());
	var mat2 = Matrix32();
	if(get_node("/Root/Player/") != null):
		mat2 = Matrix32(0.0, get_node("../Player").get_pos());
		get_parent().queue_free();
	
	if(get_shape().collide(mat, player_shape, mat2)):
		get_parent().queue_free();

func _ready():
	player_shape = preload("res://Scenes/Player/PlayerCollision.res");
	set_fixed_process(true);


