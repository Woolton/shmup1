extends Node2D

#this script is an observer, intended to be attatched to a player/enemy

export (PackedScene) var Bullet

func _on_Ship_Shoot():
	print("shot") #shoot the bullet in gun's direction

# Called when the node enters the scene tree for the first time.
#equivalent of mono Start()
func _ready():
	# pass
	print("gun is active")
	print(get_parent())
	#get_parent().connect("shoot", self, "_on_Ship_Shoot")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#equivalent of mono Update()
func _process(_delta):
	#if shoot() signal recieved from source, do On_Shoot()
	pass
