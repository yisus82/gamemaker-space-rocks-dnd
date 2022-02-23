/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0960BD2A
/// @DnDInput : 2
/// @DnDArgument : "var" "posX"
/// @DnDArgument : "value" "x"
/// @DnDArgument : "var_1" "posY"
/// @DnDArgument : "value_1" "y"
var posX = x;
var posY = y;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3561ED22
/// @DnDInput : 6
/// @DnDApplyTo : {obj_camera}
/// @DnDArgument : "var" "bulletWithinCamera"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "point_in_rectangle"
/// @DnDArgument : "arg" "posX"
/// @DnDArgument : "arg_1" "posY"
/// @DnDArgument : "arg_2" "cameraX"
/// @DnDArgument : "arg_3" "cameraY"
/// @DnDArgument : "arg_4" "cameraX + cameraWidth"
/// @DnDArgument : "arg_5" "cameraY + cameraHeight"
with(obj_camera) {
	var bulletWithinCamera = point_in_rectangle(posX, posY, cameraX, cameraY, cameraX + cameraWidth, cameraY + cameraHeight);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1AB9EF92
/// @DnDArgument : "var" "bulletWithinCamera"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(bulletWithinCamera == true))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2804EF5C
	/// @DnDParent : 1AB9EF92
	instance_destroy();
}