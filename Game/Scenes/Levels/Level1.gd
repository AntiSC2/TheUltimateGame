
extends Node2D

func _fixed_process(delta):
	if(get_child_count() < 4):
		get_node("YouWin").show();

func _ready():
	set_fixed_process(true);

