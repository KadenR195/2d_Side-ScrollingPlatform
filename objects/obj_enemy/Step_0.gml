/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5881397E
/// @DnDComment : if we are on the ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
var l5881397E_0 = instance_place(x + 0, y + 2, [obj_floor]);
if ((l5881397E_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EEA49E1
	/// @DnDComment : reset the falling speed on$(13_10)movement y$(13_10)when you landed on ground
	/// @DnDParent : 5881397E
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5B899C1E
	/// @DnDParent : 5881397E
	/// @DnDArgument : "x" "x + (30 * sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_floor"
	/// @DnDSaveInfo : "object" "obj_floor"
	var l5B899C1E_0 = instance_place(x + (30 * sign(move_x)), y + 0, [obj_floor]);
	if ((l5B899C1E_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69637890
		/// @DnDParent : 5B899C1E
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 032980F5
		/// @DnDParent : 5B899C1E
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 7158C860
	/// @DnDParent : 5881397E
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "object" "obj_floor"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_floor"
	var l7158C860_0 = instance_place(x + (25 * sign(move_x)), y + 50, [obj_floor]);
	if (!(l7158C860_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A4F76FF
		/// @DnDComment : flips movement
		/// @DnDParent : 7158C860
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 603153ED
		/// @DnDParent : 7158C860
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 37BFB57F
/// @DnDComment : if you're not on the ground
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76D28EAC
	/// @DnDComment : if we are falling
	/// @DnDParent : 37BFB57F
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BD401A8
		/// @DnDComment : add gravity
		/// @DnDParent : 76D28EAC
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 5BCBCFF7
/// @DnDComment : 1st object is object $(13_10)to avoid
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
move_and_collide(move_x, move_y, obj_floor,4,0,0,walk_speed,jump_speed);