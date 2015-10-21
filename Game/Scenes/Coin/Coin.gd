
extends Area2D;

func _on_Coin_body_enter( body ):
	if(body.get_name() == "Player"):
		queue_free();

func _ready():
	pass



