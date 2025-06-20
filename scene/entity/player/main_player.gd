extends Node2D

var move_positions: Array = []
var max_positions: int = 0
var current_position: int = 0
var move_cooldown: float = 0.5

func _ready() -> void:
	# TEMPORARY: Assign texture to player's Sprite2D node.
	$Player_Sprite.texture = load("res://krita/m30-w_test.png")
	
	# Fetch move positions from the current level node, and setup movement variables.
	for nodes in get_parent().get_children():
		if nodes.name == "Move_Space_Container":
			move_positions = nodes.get_children()
			current_position = len(move_positions)/2
			max_positions = len(move_positions)
			break
		else:
			pass

	# Set player position.
	self.position = get_node("../Move_Space_Container/"+str(move_positions[current_position])).position

func _move():
	pass


func _process(delta: float) -> void:
	pass
