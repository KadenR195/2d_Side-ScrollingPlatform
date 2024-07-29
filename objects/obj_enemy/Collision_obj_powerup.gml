/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 266B8805
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6EE7831B
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "jump_speed"
jump_speed += 10;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 6900FFD6
/// @DnDArgument : "type" "2"
vspeed = 0;