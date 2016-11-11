
extends Area2D;

func _on_Coin_body_enter( body ):
	if(body.get_name() == "Player"):
		body.get_node("YouWin").show();
		queue_free();

func _ready():
	pass