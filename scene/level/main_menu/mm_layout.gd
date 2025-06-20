extends Control

#	The amount of margin relative from one button to another.
var spacing_margin: float = 15

func _ready() -> void:
	var offset_amount: float = 0 # Dsitance to offset a button.
	for child in self.get_children(true):
		child.position.y += offset_amount
		offset_amount = (child.position.y + child.size.y + spacing_margin)
		
	pass
