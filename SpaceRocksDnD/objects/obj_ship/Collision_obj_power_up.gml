/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 07CB1587
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C749BC2
	/// @DnDParent : 07CB1587
	/// @DnDArgument : "var" "powerup_type"
	/// @DnDArgument : "value" "image_index"
	var powerup_type = image_index;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 069EA1BC
	/// @DnDParent : 07CB1587
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 33A58441
/// @DnDArgument : "var" "powerup_type"
/// @DnDArgument : "value" "5"
if(powerup_type == 5)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B1A3759
	/// @DnDParent : 33A58441
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "invincible"
	invincible = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 214CDB38
	/// @DnDParent : 33A58441
	/// @DnDArgument : "steps" "60 * 8"
	alarm_set(0, 60 * 8);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 79B45EAD
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 732C0F4A
	/// @DnDParent : 79B45EAD
	/// @DnDArgument : "expr" "powerup_type"
	/// @DnDArgument : "var" "weapon"
	weapon = powerup_type;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 437E2A77
	/// @DnDParent : 79B45EAD
	/// @DnDArgument : "steps" "60 * 5"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 60 * 5);
}