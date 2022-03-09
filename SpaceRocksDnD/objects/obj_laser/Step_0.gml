/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 36FE47CD
/// @DnDArgument : "obj" "creator"
var l36FE47CD_0 = false;
l36FE47CD_0 = instance_exists(creator);
if(l36FE47CD_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58B52E5A
	/// @DnDInput : 3
	/// @DnDParent : 36FE47CD
	/// @DnDArgument : "expr" "creator.x"
	/// @DnDArgument : "expr_1" "creator.y"
	/// @DnDArgument : "expr_2" "creator.image_angle"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	/// @DnDArgument : "var_2" "direction"
	x = creator.x;
	y = creator.y;
	direction = creator.image_angle;
}