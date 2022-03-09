/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 66E88C23
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "5"
var chance = floor(random_range(0, 5 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34A232CD
/// @DnDArgument : "var" "chance"
if(chance == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6126559E
	/// @DnDParent : 34A232CD
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_power_up"
	/// @DnDSaveInfo : "objectid" "obj_power_up"
	instance_create_layer(x + 0, y + 0, "Instances", obj_power_up);
}