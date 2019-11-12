extends RigidBody2D

# Declare member variables here. Examples:
export var min_speed = 150  # Minimum speed range.
export var max_speed = 250  # Maximum speed range.
var mob_types = ["walk", "swim", "fly"]

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()] # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Visibility_screen_exited():
	queue_free() # The mobs will delete theirselves when they leave the screen.

func _on_start_game():
	queue_free()