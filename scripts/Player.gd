extends Ship


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var direction = Vector2.ZERO

var screen_size = Vector2.ZERO

func movement(delta):
	#general
	var speed = 150
	var direction = Vector2.ZERO
	if Input.is_action_pressed("right"):
		direction.x += 1
	if Input.is_action_pressed("left"):
		direction.x -= 1
	if Input.is_action_pressed("down"):
		direction.y += 1
	if Input.is_action_pressed("up"):
		direction.y -= 1
	#normalizes diagonals
	if direction.length() > 1:
		direction = direction.normalized()
	#position changes
	position += direction * speed * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)#movement controls
func action():
	if Input.is_action_pressed("shotA"):
		print("shot A")
	if Input.is_action_pressed("shotB"):
		print("shot B")
	if Input.is_action_pressed("bomb"):
		print("bomb")#action controls

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	print(screen_size)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#movement
	movement(delta)
	#action
	action()
