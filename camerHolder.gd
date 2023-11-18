extends Node3D

@export var rotate_speed = .1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var axis = Vector3.UP
	var rotation_amount = rotate_speed * delta
	self.transform.basis = Basis(axis, rotation_amount) * self.transform.basis

