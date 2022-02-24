/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 451B06A7
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 22446F05
/// @DnDArgument : "obj" "obj_ship"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_ship"
var l22446F05_0 = false;
l22446F05_0 = instance_exists(obj_ship);
if(!l22446F05_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3CAF4DE9
	/// @DnDParent : 22446F05
	exit;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0F22186B
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
/// @DnDHash : 24636EA3
/// @DnDArgument : "var" "dist"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "250"
if(dist < 250)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5CFA0A88
	/// @DnDInput : 4
	/// @DnDParent : 24636EA3
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
	/// @DnDHash : 77444D14
	/// @DnDParent : 24636EA3
	/// @DnDArgument : "angle" "dir"
	image_angle = dir;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F4B28EB
	/// @DnDParent : 24636EA3
	/// @DnDArgument : "expr" "dir"
	/// @DnDArgument : "var" "direction"
	direction = dir;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 319E4561
	/// @DnDParent : 24636EA3
	/// @DnDArgument : "var" "dist"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "150"
	if(dist < 150)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4E2159AA
		/// @DnDParent : 319E4561
		/// @DnDArgument : "expr" "-0.05"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "speed"
		speed += -0.05;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 52CB84A3
	/// @DnDParent : 24636EA3
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7ABFEBC2
		/// @DnDParent : 52CB84A3
		/// @DnDArgument : "expr" "0.01"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "speed"
		speed += 0.01;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DC018D2
	/// @DnDParent : 24636EA3
	/// @DnDArgument : "var" "bulletCounter"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "40"
	if(bulletCounter >= 40)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 356BAAF8
		/// @DnDInput : 2
		/// @DnDParent : 1DC018D2
		/// @DnDArgument : "script" "create_bullet"
		/// @DnDArgument : "arg" "dir"
		/// @DnDArgument : "arg_1" "8"
		/// @DnDSaveInfo : "script" "create_bullet"
		script_execute(create_bullet, dir, 8);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 30F137ED
		/// @DnDParent : 1DC018D2
		/// @DnDArgument : "var" "bulletCounter"
		bulletCounter = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6A19F16E
	/// @DnDParent : 24636EA3
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 658C20E5
		/// @DnDParent : 6A19F16E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "bulletCounter"
		bulletCounter += 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0E780C44
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BB7BE79
	/// @DnDParent : 0E780C44
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "speed"
	speed = 2;
}