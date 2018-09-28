/// scr_draw_view_character_menu(max_char, func)

var _max_char = argument[0];
var _func = argument[1];

draw_set_colour(c_white);
draw_rectangle(0, 416, 720, 560, false);
draw_set_colour(c_black);
draw_rectangle(4, 420, 716, 556, false);

var _mugshot_width = 128;
var _screen_width = 720;
var _spacing = _screen_width/(_max_char+1);
var _x = (_spacing-_mugshot_width)/_max_char;
var _y = 426;

//var _spacing = 32;
var _favour = 0;
var _radius = 55;

var _brake = 200;
if (alarm[1] == -1)
{
    alarm[1] = 360*_brake;
}

//we draw the mugshots of all parties that can have favour
for (var _cur_char = CHAR_KING; _cur_char <= _max_char; _cur_char += 1)
{
    _pressed = scr_draw_button(_x, _y, spr_mugshot, _cur_char, "");
    script_execute(_func, _x, _y, _cur_char, _pressed);
    _x += _spacing;
}
