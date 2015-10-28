
extends Node2D

var children_count;

func _fixed_process(delta):
	if(get_child_count() < children_count):
		get_node("YouWin").show();

func _ready():
	children_count = get_child_count();
	set_fixed_process(true);

