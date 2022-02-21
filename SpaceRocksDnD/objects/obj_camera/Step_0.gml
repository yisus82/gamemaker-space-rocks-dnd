/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6F10899D
/// @DnDArgument : "obj" "target"
var l6F10899D_0 = false;
l6F10899D_0 = instance_exists(target);
if(l6F10899D_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3172A239
	/// @DnDInput : 2
	/// @DnDParent : 6F10899D
	/// @DnDArgument : "expr" "clamp(target.x - cameraWidth/2, 0, room_width - cameraWidth)"
	/// @DnDArgument : "expr_1" "clamp(target.y - cameraHeight/2, 0, room_height - cameraHeight)"
	/// @DnDArgument : "var" "cameraX"
	/// @DnDArgument : "var_1" "cameraY"
	cameraX = clamp(target.x - cameraWidth/2, 0, room_width - cameraWidth);
	cameraY = clamp(target.y - cameraHeight/2, 0, room_height - cameraHeight);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5CC99EC2
	/// @DnDInput : 3
	/// @DnDParent : 6F10899D
	/// @DnDArgument : "function" "camera_set_view_pos"
	/// @DnDArgument : "arg" "view_camera[0]"
	/// @DnDArgument : "arg_1" "cameraX"
	/// @DnDArgument : "arg_2" "cameraY"
	camera_set_view_pos(view_camera[0], cameraX, cameraY);
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 330E0648
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Parallax_0""
/// @DnDArgument : "arg_1" "cameraX * 0.98"
layer_x("Parallax_0", cameraX * 0.98);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 11DE74F8
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Parallax_0""
/// @DnDArgument : "arg_1" "cameraY * 0.98"
layer_y("Parallax_0", cameraY * 0.98);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6C0D73A7
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Parallax_1""
/// @DnDArgument : "arg_1" "cameraX * 0.9"
layer_x("Parallax_1", cameraX * 0.9);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 74F2EA0B
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Parallax_1""
/// @DnDArgument : "arg_1" "cameraY * 0.9"
layer_y("Parallax_1", cameraY * 0.9);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 52CDACE0
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Parallax_2""
/// @DnDArgument : "arg_1" "cameraX * 0.86"
layer_x("Parallax_2", cameraX * 0.86);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 26EEEEB2
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Parallax_2""
/// @DnDArgument : "arg_1" "cameraY * 0.86"
layer_y("Parallax_2", cameraY * 0.86);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2473E759
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Parallax_3""
/// @DnDArgument : "arg_1" "cameraX * 0.8"
layer_x("Parallax_3", cameraX * 0.8);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 78DAAE2A
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Parallax_3""
/// @DnDArgument : "arg_1" "cameraY * 0.8"
layer_y("Parallax_3", cameraY * 0.8);