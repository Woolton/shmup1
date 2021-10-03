extends Node2D

#this script is an observer, intended to be attatched to a player/enemy

export (PackedScene) var bullet = preload("res://Bullet.tscn")


func _on_Ship_Shoot():
	print("shot gun") #shoot the bullet in gun's direction

	#bullet is instantiated, and childed to the world
	var bullInstance = bullet.instance()
	get_tree().get_root().get_node("MAIN").add_child(bullInstance)

	#bullet transform assigned to gun
	bullInstance.transform = self.global_transform


# Called when the node enters the scene tree for the first time.
#equivalent of mono Start()
func _ready():
	# pass
	print("gun is active")
	print(get_parent())

# Called every frame. 'delta' is the elapsed time since the previous frame.
#equivalent of mono Update()
func _process(_delta):
	pass
