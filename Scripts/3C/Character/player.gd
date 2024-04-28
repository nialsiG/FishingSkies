class_name Player extends CharacterBody2D

@export var speed = 200

#region Gameloop

func _ready():
	var anim = $AnimatedSprite2D
	anim.play("idle")

func _process(delta):
	compute_velocity()

func _physics_process(delta):
	move_and_slide()

#endregion

#region Methods

## A function to compute velocity
func compute_velocity():
	if Input.is_action_pressed("MoveRight"):
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed("MoveLeft"):
		velocity.x = -speed
		velocity.y = 0
	elif Input.is_action_pressed("MoveDown"):
		velocity.x = 0
		velocity.y = speed
	elif Input.is_action_pressed("MoveUp"):
		velocity.x = 0
		velocity.y = -speed
	else:
		velocity.x = 0
		velocity.y = 0

#endregion
