extends Control


var score = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	var canvas_rid = get_canvas_item()
	VisualServer.canvas_item_set_z_index(canvas_rid, 100)
	update_score()

func update_score():
	$Label.text = "SCORE:" + str(score)

