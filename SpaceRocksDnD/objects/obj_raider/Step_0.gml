/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 33CB56C2
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 611A83D5
/// @DnDArgument : "obj" "obj_ship"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_ship"
var l611A83D5_0 = false;
l611A83D5_0 = instance_exists(obj_ship);
if(!l611A83D5_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 47B7DB02
	/// @DnDParent : 611A83D5
	exit;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1D24A770
/// @DnDInput : 4
/// @DnDArgument : "var" "dist"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "point_distance"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" "obj_ship.x"
/// @DnDArgument : "arg_3" "obj_ship.y"
var dist = point_distance(x, y, obj_ship.x, obj_ship.y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DF1956B
/// @DnDArgument : "var" "dist"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "250"
if(dist < 250)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6A69B5F5
	/// @DnDInput : 4
	/// @DnDParent : 3DF1956B
	/// @DnDArgument : "var" "dir"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "point_direction"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "y"
	/// @DnDArgument : "arg_2" "obj_ship.x"
	/// @DnDArgument : "arg_3" "obj_ship.y"
	var dir = point_direction(x, y, obj_ship.x, obj_ship.y);

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 07EF7F81
	/// @DnDParent : 3DF1956B
	/// @DnDArgument : "angle" "dir"
	image_angle = dir;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 388A9A72
	/// @DnDParent : 3DF1956B
	/// @DnDArgument : "var" "bulletCounter"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "60"
	if(bulletCounter >= 60)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7CA8F666
		/// @DnDInput : 2
		/// @DnDParent : 388A9A72
		/// @DnDArgument : "script" "create_bullet"
		/// @DnDArgument : "arg" "dir"
		/// @DnDArgument : "arg_1" "4"
		/// @DnDSaveInfo : "script" "create_bullet"
		script_execute(create_bullet, dir, 4);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6CCB8B3F
		/// @DnDParent : 388A9A72
		/// @DnDArgument : "var" "bulletCounter"
		bulletCounter = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6C1AF12F
	/// @DnDParent : 3DF1956B
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 48CC38CB
		/// @DnDParent : 6C1AF12F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bulletCounter"
		bulletCounter += 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 04B8E4AD
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 18800495
	/// @DnDParent : 04B8E4AD
	/// @DnDArgument : "angle" "direction"
	image_angle = direction;
}