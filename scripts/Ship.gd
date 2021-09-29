
class_name Ship
extends Area2D

# Declare member variables here. Examples:
export var gunCount = 0 #number of weapons
export var health = 1
export var speed = 150.0
func shoot():
	pass
# Called when the node enters the scene tree for the first time.
func _ready():
	gunCount = 1
