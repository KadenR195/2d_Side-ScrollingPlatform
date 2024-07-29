/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 1F2E684D
/// @DnDComment : spawn Visual FX
/// @DnDApplyTo : other
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FFB2FFFF"
with(other) effect_create_above(1, x + 0, y + 0, 0, $FFB2FFFF & $ffffff);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 53B3BF9F
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6127C4E0
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "coins"
coins += 1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 79EC7003
/// @DnDArgument : "msg" "coins"
show_debug_message(string(coins));

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0CC6008D
/// @DnDArgument : "soundid" "Pickup_Coin"
/// @DnDSaveInfo : "soundid" "Pickup_Coin"
audio_play_sound(Pickup_Coin, 0, 0, 1.0, undefined, 1.0);