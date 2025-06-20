extends Node

func _ready() -> void:
	pass

func _input(event: InputEvent) -> void:
	# Move up
	if event.is_action_pressed("input_move_up"):
		#  If player's position index is less than 1, and the cooldown time is expired.
		if get_parent().current_position >= 1 && $Move_Cooldown_Timer.time_left == 0:
			get_parent().current_position -= 1
			get_parent().position = (get_parent().move_positions[get_parent().current_position]).position
			$Move_Cooldown_Timer.start(get_parent().move_cooldown)
	
	# Move down
	elif event.is_action_pressed("input_move_down"):
		#  If player's position index is greater than maximum spaces (-1), and the cooldown time is expired.
		if get_parent().current_position <= (get_parent().max_positions)-1 && $Move_Cooldown_Timer.time_left == 0:
			get_parent().current_position += 1
			get_parent().position = (get_parent().move_positions[get_parent().current_position]).position
			$Move_Cooldown_Timer.start(get_parent().move_cooldown)

	# Use right hand weapon
	elif event.is_action_pressed("input_action_1"):
		pass
	
	# Use left hand weapon
	elif event.is_action_pressed("input_action_2"):
		pass
	
	# Reload
	elif event.is_action_pressed("input_action_reload"):
		pass
