extends Timer


var hex_scene = preload("res://Prefabs/Hex.tscn")
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	call_deferred("spawner_hex")


func spawner_hex():
	var hex_node = hex_scene.instance()
	hex_node.rotation = (PI / 6) * rng.randf_range(0, 11)
	get_tree().current_scene.add_child(hex_node)


func _on_HexSpawner_timeout():
	spawner_hex()
