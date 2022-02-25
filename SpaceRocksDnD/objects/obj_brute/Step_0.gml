/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2E180BB1
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 55B39A62
/// @DnDArgument : "expr" "hp - 1"
/// @DnDArgument : "var" "image_index"
image_index = hp - 1;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1090043D
/// @DnDArgument : "obj" "obj_ship"
/// @DnDArgument : "not" "1"
var l1090043D_0 = false;
l1090043D_0 = instance_exists(obj_ship);
if(!l1090043D_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7759FCDD
	/// @DnDParent : 1090043D
	exit;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2CA84988
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
/// @DnDHash : 5C46ED71
/// @DnDArgument : "var" "dist"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "250"
if(dist < 250)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6FDBAA9F
	/// @DnDInput : 4
	/// @DnDParent : 5C46ED71
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
	/// @DnDHash : 0F5BFFD2
	/// @DnDParent : 5C46ED71
	/// @DnDArgument : "angle" "dir"
	image_angle = dir;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EDFDD23
	/// @DnDInput : 2
	/// @DnDParent : 5C46ED71
	/// @DnDArgument : "expr" "dir"
	/// @DnDArgument : "expr_1" "0.01"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "direction"
	/// @DnDArgument : "var_1" "speed"
	direction = dir;
	speed += 0.01;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3A3BCDFA
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FA84C3B
	/// @DnDParent : 3A3BCDFA
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "speed"
	speed = 1;
}