extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	var player = load("res://Player.tscn")
	var playerNode = player.instance()

	add_child(playerNode)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
