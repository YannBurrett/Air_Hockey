extends RigidBody

var speed = 10


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if Input.is_action_pressed("ui_right"):
		apply_impulse(Vector3(0,0,0), Vector3(speed,0,0))
	elif Input.is_action_pressed("ui_left"):
		apply_impulse(Vector3(0,0,0), Vector3(-speed,0,0))

	if Input.is_action_pressed("ui_up"):
		apply_impulse(Vector3(0,0,0), Vector3(0,0,-speed))
	elif Input.is_action_pressed("ui_down"):
		apply_impulse(Vector3(0,0,0), Vector3(0,0,speed))