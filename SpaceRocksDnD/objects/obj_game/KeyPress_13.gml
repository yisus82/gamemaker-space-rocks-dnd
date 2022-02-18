/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 0B6B412D
/// @DnDArgument : "expr" "room"
var l0B6B412D_0 = room;
switch(l0B6B412D_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 28976C64
	/// @DnDParent : 0B6B412D
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 71743893
		/// @DnDParent : 28976C64
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "rm_game"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2C53B27C
	/// @DnDParent : 0B6B412D
	/// @DnDArgument : "const" "rm_game_over"
	case rm_game_over:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 095DED8F
		/// @DnDParent : 2C53B27C
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5DDAFEDD
	/// @DnDParent : 0B6B412D
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 14B34FE2
		/// @DnDParent : 5DDAFEDD
		game_restart();
		break;
}