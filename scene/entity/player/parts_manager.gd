extends Node2D

var head_file: String = "part/head/test_head.tscn"
var torso_file: String = "part/torso/test_torso.tscn"
var arm_l_file: String = "part/arms/test_arm_l.tscn"
var arm_r_file: String = "part/arms/test_arm_r.tscn"
var legs_file: String = "part/legs/test_legs.tscn"
var wep_l_file: String = "part/weapons/melee/test_dagger.tscn"
var wep_r_file: String = "part/weapons/ranged/test_pistol.tscn"
var parts_all: Array = [head_file, torso_file, arm_l_file, arm_r_file, legs_file, wep_l_file, wep_r_file]

func _ready() -> void:
	# Create all parts defined in the parts_all array.
	var part_scene: PackedScene = load("")
	var part_path: String = ""
	for part in len(parts_all):
		part_path = str(parts_all[part])
		part_scene = load("res://scene/"+part_path)
		add_child(part_scene.instantiate())
