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

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 116E1E90
	/// @DnDParent : 6F10899D
	/// @DnDArgument : "var" "xShake"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "min" "-cameraShake"
	/// @DnDArgument : "max" "cameraShake"
	var xShake = (random_range(-cameraShake, cameraShake));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 42520CBD
	/// @DnDParent : 6F10899D
	/// @DnDArgument : "var" "yShake"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "min" "-cameraShake"
	/// @DnDArgument : "max" "cameraShake"
	var yShake = (random_range(-cameraShake, cameraShake));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 069BFCA9
	/// @DnDParent : 6F10899D
	/// @DnDArgument : "var" "cameraShake"
	/// @DnDArgument : "op" "2"
	if(cameraShake > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 303B77AE
		/// @DnDParent : 069BFCA9
		/// @DnDArgument : "expr" "-0.2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "cameraShake"
		cameraShake += -0.2;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13FF4E3D
		/// @DnDParent : 069BFCA9
		/// @DnDArgument : "var" "cameraShake"
		/// @DnDArgument : "op" "1"
		if(cameraShake < 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7C65CBE6
			/// @DnDParent : 13FF4E3D
			/// @DnDArgument : "var" "cameraShake"
			cameraShake = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5CC99EC2
	/// @DnDInput : 3
	/// @DnDParent : 6F10899D
	/// @DnDArgument : "function" "camera_set_view_pos"
	/// @DnDArgument : "arg" "view_camera[0]"
	/// @DnDArgument : "arg_1" "cameraX + xShake"
	/// @DnDArgument : "arg_2" "cameraY + yShake"
	camera_set_view_pos(view_camera[0], cameraX + xShake, cameraY + yShake);
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