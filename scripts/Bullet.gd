extends Node2D


# Declare member variables here. Examples:
var direction = Vector2.ZERO #direction for bullet to move in
#var origin = get_parent().position #origin of bullet
var speed = 50


# Called when the node enters the scene tree for the first time.
func _ready():
	print(position)
	print("woo")
	direction = Vector2(-5,4)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position -= transform.y * speed * delta #don't know why up is negative but w/e
