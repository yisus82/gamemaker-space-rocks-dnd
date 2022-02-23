/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5913B012
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 6688CD16
	/// @DnDParent : 5913B012
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDSaveInfo : "soundid" "msc_song"
	var l6688CD16_0 = msc_song;
	if (audio_is_playing(l6688CD16_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 17FB375F
		/// @DnDParent : 6688CD16
		/// @DnDArgument : "soundid" "msc_song"
		/// @DnDSaveInfo : "soundid" "msc_song"
		audio_stop_sound(msc_song);
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1F1F50CC
	/// @DnDParent : 5913B012
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "msc_song"
	audio_play_sound(msc_song, 0, 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 71DFF232
	/// @DnDParent : 5913B012
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 5CA2C610
	/// @DnDInput : 2
	/// @DnDParent : 5913B012
	/// @DnDArgument : "script" "spawn_off_camera"
	/// @DnDArgument : "arg" "obj_asteroid"
	/// @DnDArgument : "arg_1" "40"
	/// @DnDSaveInfo : "script" "spawn_off_camera"
	script_execute(spawn_off_camera, obj_asteroid, 40);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 2BE73562
	/// @DnDInput : 2
	/// @DnDParent : 5913B012
	/// @DnDArgument : "script" "spawn_off_camera"
	/// @DnDArgument : "arg" "obj_raider"
	/// @DnDArgument : "arg_1" "8"
	/// @DnDSaveInfo : "script" "spawn_off_camera"
	script_execute(spawn_off_camera, obj_raider, 8);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 076EF10C
	/// @DnDInput : 2
	/// @DnDParent : 5913B012
	/// @DnDArgument : "script" "spawn_off_camera"
	/// @DnDArgument : "arg" "obj_hunter"
	/// @DnDArgument : "arg_1" "5"
	/// @DnDSaveInfo : "script" "spawn_off_camera"
	script_execute(spawn_off_camera, obj_hunter, 5);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 1F5BA44E
	/// @DnDInput : 2
	/// @DnDParent : 5913B012
	/// @DnDArgument : "script" "spawn_off_camera"
	/// @DnDArgument : "arg" "obj_brute"
	/// @DnDArgument : "arg_1" "3"
	/// @DnDSaveInfo : "script" "spawn_off_camera"
	script_execute(spawn_off_camera, obj_brute, 3);
}