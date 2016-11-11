
extends Label

var timer = 5;

func _fixed_process(delta):
	if(is_visible()):
		timer -= delta;
	if(timer < 0):
		if (global.current_scene.get_name() == "1"):
			global.goto_scene("res://Scenes/Levels/Level2.scn");
			timer = 5;
			hide();
		elif (global.current_scene.get_name() == "2"):
			global.goto_scene("res://Scenes/Levels/Level3.scn");
			timer = 5;
			hide();

func _ready():
	set_fixed_process(true);


