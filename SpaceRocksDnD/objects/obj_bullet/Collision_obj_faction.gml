/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FA124C2
/// @DnDArgument : "var" "other.id"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "creator"
if(!(other.id == creator))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7BB43968
	/// @DnDParent : 0FA124C2
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6978F9B1
	/// @DnDParent : 0FA124C2
	/// @DnDArgument : "var" "other.faction"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "faction"
	if(!(other.faction == faction))
	{
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 01D65656
		/// @DnDApplyTo : other
		/// @DnDParent : 6978F9B1
		with(other) {
		event_user(0);
		}
	}
}