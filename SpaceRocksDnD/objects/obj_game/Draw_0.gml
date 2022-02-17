/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 1331430E
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "20"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(20, 20, string("Score: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 0C9CD152
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

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 6C5DBB96
/// @DnDArgument : "font" "fnt_text"
/// @DnDSaveInfo : "font" "fnt_text"
draw_set_font(fnt_text);