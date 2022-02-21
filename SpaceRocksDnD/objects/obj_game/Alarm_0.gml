/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27AA11E8
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rm_game"
if(!(room == rm_game))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2ACF9BBF
	/// @DnDParent : 27AA11E8
	exit;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2988107C
/// @DnDArgument : "steps" "room_speed"
alarm_set(0, room_speed);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 052628B7
/// @DnDArgument : "script" "spawn_off_camera"
/// @DnDArgument : "arg" "obj_asteroid"
/// @DnDSaveInfo : "script" "spawn_off_camera"
script_execute(spawn_off_camera, obj_asteroid);