extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export (int) var speed  # How fast the player will move (pixels/sec).
export (bool) var isPlayer
var screensize 


func _ready():
	screensize = get_viewport_rect().size

func _process(delta):

	if isPlayer:
		var velocity = Vector2() # The player's movement vector.
		if Input.is_action_pressed("ui_right"):
	        velocity.x += 1
		if Input.is_action_pressed("ui_left"):
	        velocity.x -= 1
		if Input.is_action_pressed("ui_down"):
	        velocity.y += 1
		if Input.is_action_pressed("ui_up"):
	        velocity.y -= 1
		if velocity.length() > 0:
	        velocity = velocity.normalized() * speed
	        
		
		position += velocity * delta
		position.x = clamp(position.x, 0, screensize.x)
		position.y = clamp(position.y, 0, screensize.y)




func _on_Cube_area_entered(area):
	self.isPlayer = false
	area.isPlayer = true
	$CollisionShape2D.disabled = true


func _on_Cube_area_exited(area):
	area.get_node("CollisionShape2D").disabled = false
