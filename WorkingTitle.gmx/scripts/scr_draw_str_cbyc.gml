/// src_draw_string_character_by_character(int x, int y, string str);
var _x = argument[0];
var _y = argument[1];
var _str = argument[2];
var _str_len = string_length(_str);
var _char = '';
var _i = 0;

var _char_width = 0;
var _char_height = string_height(string_char_at(_str,1));

// alarm is in obj_view
with (obj_view)
{
// set alarm if none is set. alarms go to -1, so -2 is standby
    if (alarm[0] == -2)
    {
        alarm[0] = TEXT_SPEED_INV*_str_len;
    }

    // draw string up to how long alarm has counted
    var _substring = string_copy(_str, 0, _str_len-(alarm[0]/TEXT_SPEED_INV));
    
    // center text in the y_middle of the textbox
    draw_set_valign(fa_middle);
    draw_text_ext(_x, _y + sprite_get_height(spr_mugshot)/2, _substring, _char_height + 3, 430);
    draw_set_valign(fa_top);
}
