/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 2FF52951
/// @DnDComment : spawn visual fx
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "8"
/// @DnDArgument : "size" "2"
/// @DnDArgument : "color" "$FFC46B4A"
effect_create_below(8, x + 0, y + 0, 2, $FFC46B4A & $ffffff);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 32BCA66D
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 791D1FA0
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "coins"
coins = 1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2998561A
/// @DnDArgument : "msg" "coins "
show_debug_message(string(coins ));