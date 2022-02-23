/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FDC9B7D
/// @DnDArgument : "var" "other.faction"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "faction"
if(!(other.faction == faction))
{
	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 55452AF1
	/// @DnDParent : 4FDC9B7D
	event_user(0);
}