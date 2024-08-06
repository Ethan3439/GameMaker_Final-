/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 72192AE8
/// @DnDComment : place the button back where it started$(13_10)when this alarm is called 
x = xstart;
y = ystart;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 25E4B63F
/// @DnDArgument : "steps" "10"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 10);