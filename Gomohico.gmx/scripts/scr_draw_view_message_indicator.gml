/// scr_draw_view_message_indicator(x, y, cur_char, pressed)

var _x = argument[0];
var _y = argument[1];
var _cur_char = argument[2];
var _pressed = argument[3];

/// Draw message count.
var _message_count;

draw_set_colour(c_black);
draw_roundrect(_x + 10, _y + 38, _x + 28, _y + 56, false);

draw_set_colour(c_white);
draw_set_font(fnt_small);
if (obj_kingdom.read_all[_cur_char])
{
    draw_sprite(spr_reread, 0, _x + 14, _y + 42);
}
else
{
    _message_count = ds_queue_size(obj_kingdom.messages[_cur_char]);
    draw_text(_x + 18, _y + 42, string(_message_count));
}

if (_pressed)
{
    scr_dequeue_message(_cur_char);
}
