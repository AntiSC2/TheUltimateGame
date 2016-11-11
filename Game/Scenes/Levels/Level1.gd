
extends Node2D

func _fixed_process(delta):
	if(has_node("Coin") == false):
		get_node("Player").get_node("YouWin").show();

func _ready():
	set_fixed_process(true);

