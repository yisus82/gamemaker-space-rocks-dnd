/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3C744189
/// @DnDInput : 5
/// @DnDArgument : "expr_2" "obj_ship"
/// @DnDArgument : "expr_3" "500"
/// @DnDArgument : "expr_4" "500"
/// @DnDArgument : "var" "cameraX"
/// @DnDArgument : "var_1" "cameraY"
/// @DnDArgument : "var_2" "target"
/// @DnDArgument : "var_3" "cameraWidth"
/// @DnDArgument : "var_4" "cameraHeight"
cameraX = 0;
cameraY = 0;
target = obj_ship;
cameraWidth = 500;
cameraHeight = 500;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 7A6FE239
/// @DnDInput : 2
/// @DnDArgument : "function" "display_set_gui_size"
/// @DnDArgument : "arg" "cameraWidth"
/// @DnDArgument : "arg_1" "cameraHeight"
display_set_gui_size(cameraWidth, cameraHeight);