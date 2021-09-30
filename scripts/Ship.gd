
class_name Ship
extends Area2D

# Declare member variables here.
export var gunCount = 0 #number of weapons
export var health = 1 #health points
export var speed = 150.0 #movement speed
export (PackedScene)var Gun = null#gun prefab
export var guns = [] #list of guns

signal shoot
func bomb():
	pass#bombs
func addGun(PackedScene, GunCount): #adds guns based on count
	for i in range(0,GunCount):
		guns.append(Gun.instance())#add gun to array
		self.add_child(Gun.instance())#add gun to ship
		print("%d connected" % i)
		self.connect("shoot", guns[i], "_on_Ship_Shoot")#assign signal to all array members
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
