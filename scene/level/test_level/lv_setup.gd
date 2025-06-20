extends Node2D

@onready var player_scene_path: PackedScene = preload("res://scene/entity/player/player.tscn")
var move_space_amount: int = 3

func _ready() -> void:
	# Set the parallax layer tiling to game resolution width.
	$ParallaxBackground/ParallaxLayer.motion_mirroring.x = get_window().size.x
	
	
	# Create, name, and set the position of the spaces the player can move to.
	for space in move_space_amount:
		var child_node = Node2D.new()
		child_node.name = ("Move_Space_"+str(space+1))
		child_node.position.x = $Move_Space_Container.size.x/2
		child_node.position.y = ($Move_Space_Container.size.y/(move_space_amount+1))*(space+1)
		$Move_Space_Container.add_child(child_node)
	
	# Add player.
	var player_node = player_scene_path.instantiate()
	add_child(player_node)


func _process(delta: float) -> void:
	# DO NOTHING ELSE !!!
	# Scroll background at a fixed rate.
	if $ParallaxBackground/ParallaxLayer.position.x <= (get_window().size.x)*-1 :
		$ParallaxBackground/ParallaxLayer.position.x = 0
	else:
		$ParallaxBackground/ParallaxLayer.position.x -= 450 * delta
