/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FDC9B7D
/// @DnDArgument : "var" "other.faction"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "faction"
if(!(other.faction == faction))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0611D9E7
	/// @DnDParent : 4FDC9B7D
	/// @DnDArgument : "var" "invincible"
	/// @DnDArgument : "value" "true"
	if(invincible == true)
	{
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 1BC562C2
		/// @DnDApplyTo : other
		/// @DnDParent : 0611D9E7
		with(other) {
		event_user(0);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 355F50EC
	/// @DnDParent : 4FDC9B7D
	else
	{
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 55452AF1
		/// @DnDParent : 355F50EC
		event_user(0);
	}
}