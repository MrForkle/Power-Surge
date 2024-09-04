extends Skeleton3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var target:Vector3 = to_global($"Leg4 Target".position)
	var relative_target = to_global($body/Cylinder_009.position)-target
	var rotation_x = atan((relative_target.x/relative_target.z))
	rotation_x += deg_to_rad(180)
	$body/Cylinder_009.rotation.y = rotation_x
	var rotation_z = atan((relative_target.z/relative_target.y))
	rotation_z += deg_to_rad(90)
	$"body/Cylinder_009".rotation.x = rotation_z
