extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var cubes
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Button_pressed():
	self.visible = false
	cubes = get_parent().get_node("Cubes")
	cubes.get_node("Player").isPlayer = true
	cubes.visible = true
