/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 0A5E9268
/// @DnDArgument : "expr" "room"
var l0A5E9268_0 = room;
switch(l0A5E9268_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 211F9D12
	/// @DnDParent : 0A5E9268
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1331430E
		/// @DnDParent : 211F9D12
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 0C9CD152
		/// @DnDParent : 211F9D12
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "spr_lives"
		var l0C9CD152_0 = sprite_get_width(spr_lives);
		var l0C9CD152_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l0C9CD152_2 = __dnd_lives; l0C9CD152_2 > 0; --l0C9CD152_2) {
			draw_sprite(spr_lives, 0, 20 + l0C9CD152_1, 40);
			l0C9CD152_1 += l0C9CD152_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0DDC31B9
	/// @DnDParent : 0A5E9268
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 166B35DF
		/// @DnDParent : 0DDC31B9
		/// @DnDArgument : "halign" "fa_center"
		/// @DnDArgument : "valign" "fa_middle"
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 0C00B305
		/// @DnDParent : 0DDC31B9
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l0C00B305_0=($FF00FFFF >> 24);
		draw_set_alpha(l0C00B305_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 093CA1E3
		/// @DnDParent : 0DDC31B9
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""SPACE ROCKS""
		draw_text_transformed(250, 100, string("SPACE ROCKS") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 09F4A12B
		/// @DnDParent : 0DDC31B9
		draw_set_colour($FFFFFFFF & $ffffff);
		var l09F4A12B_0=($FFFFFFFF >> 24);
		draw_set_alpha(l09F4A12B_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 598DBC52
		/// @DnDParent : 0DDC31B9
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1000 points to win!""
		draw_text(250, 200, string("Score 1000 points to win!") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 5F2081AB
		/// @DnDParent : 0DDC31B9
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "240"
		/// @DnDArgument : "caption" ""UP: Move""
		draw_text(250, 240, string("UP: Move") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2D6D4186
		/// @DnDParent : 0DDC31B9
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "270"
		/// @DnDArgument : "caption" ""LEFT/RIGHT: Rotate""
		draw_text(250, 270, string("LEFT/RIGHT: Rotate") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 11CFFE6D
		/// @DnDParent : 0DDC31B9
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" ""SPACE: Shoot""
		draw_text(250, 300, string("SPACE: Shoot") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 330F14FF
		/// @DnDParent : 0DDC31B9
		/// @DnDArgument : "color" "$FF00FF00"
		draw_set_colour($FF00FF00 & $ffffff);
		var l330F14FF_0=($FF00FF00 >> 24);
		draw_set_alpha(l330F14FF_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2AB9C212
		/// @DnDParent : 0DDC31B9
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO START <<""
		draw_text(250, 350, string(">> PRESS ENTER TO START <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 0D3D39EB
		/// @DnDParent : 0DDC31B9
		draw_set_colour($FFFFFFFF & $ffffff);
		var l0D3D39EB_0=($FFFFFFFF >> 24);
		draw_set_alpha(l0D3D39EB_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 308D66EF
		/// @DnDParent : 0DDC31B9
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2854FCDC
	/// @DnDParent : 0A5E9268
	/// @DnDArgument : "const" "rm_game_over"
	case rm_game_over:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 1FBE39E1
		/// @DnDParent : 2854FCDC
		/// @DnDArgument : "halign" "fa_center"
		/// @DnDArgument : "valign" "fa_middle"
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 20869941
		/// @DnDParent : 2854FCDC
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l20869941_0=($FF0000FF >> 24);
		draw_set_alpha(l20869941_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 7A355A65
		/// @DnDParent : 2854FCDC
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE""
		draw_text_transformed(250, 150, string("YOU LOSE") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 762173EF
		/// @DnDParent : 2854FCDC
		draw_set_colour($FFFFFFFF & $ffffff);
		var l762173EF_0=($FFFFFFFF >> 24);
		draw_set_alpha(l762173EF_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 66EF03DA
		/// @DnDParent : 2854FCDC
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 0C7985C6
		/// @DnDParent : 2854FCDC
		/// @DnDArgument : "color" "$FF00FF00"
		draw_set_colour($FF00FF00 & $ffffff);
		var l0C7985C6_0=($FF00FF00 >> 24);
		draw_set_alpha(l0C7985C6_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2AFBCAEC
		/// @DnDParent : 2854FCDC
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART <<""
		draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 24B1AAF2
		/// @DnDParent : 2854FCDC
		draw_set_colour($FFFFFFFF & $ffffff);
		var l24B1AAF2_0=($FFFFFFFF >> 24);
		draw_set_alpha(l24B1AAF2_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 21BB4847
		/// @DnDParent : 2854FCDC
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}