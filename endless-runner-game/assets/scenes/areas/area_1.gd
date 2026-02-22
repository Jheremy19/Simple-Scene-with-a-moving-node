extends Area2D

func _ready() -> void:
	
	self.body_entered.connect(_on_area1_body_entered)

func _on_area1_body_entered(body):

	if body.name == "player": 
		print("Player entered Area2!")

		get_tree().change_scene_to_file("res://area_2.tscn")
