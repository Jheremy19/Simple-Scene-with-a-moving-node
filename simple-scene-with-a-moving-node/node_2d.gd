extends Node2D

# Called when the node enters the scene tree for the first time
func _ready():
	# Create a Label node
	var label = Label.new()
	label.text = "Hello World"
	label.position = Vector2(400, 300)
	
	# Optional: Style the label
	label.add_theme_font_size_override("font_size", 48)
	
	# Add the label as a child of this node
	add_child(label)
	
	print("Hello World scene initialized!")

# Called every frame. 'delta' is the elapsed time since the previous frame
func _process(delta):
	# Make the text move in a circular pattern
	var time = Time.get_ticks_msec() / 1000.0
	var label = get_child(0) if get_child_count() > 0 else null
	
	if label:
		# Circular motion
		var radius = 100
		var center_x = 400
		var center_y = 300
		
		label.position.x = center_x + cos(time) * radius
		label.position.y = center_y + sin(time) * radius
