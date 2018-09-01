/// Draw a button.
// scr_draw_button(x, y, sprite, sub_sprite, text, [scale], [alpha])

var _button_x    = argument[0];
var _button_y    = argument[1];
var _sprite      = argument[2];
var _sub_sprite  = argument[3];
var _text        = argument[4];

var _scale = 1;
if (argument_count > 5) {
    _scale = argument[5]
}

var _alpha = 1;
if (argument_count > 6) {
    _alpha = argument[6]
}

draw_sprite_ext(_sprite, _sub_sprite, _button_x, _button_y, _scale, _scale, 0, c_white, _alpha);

// Draw the text ontop of the button.
if (_text != "") {
    draw_set_colour(c_black);
    // Font should be set here.
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_text);
    draw_text(_button_x, _button_y, _text);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

// Check if the button is being pressed.
if (mouse_x > _button_x - sprite_get_width(_sprite)
&& mouse_y > _button_y - sprite_get_height(_sprite)
&& mouse_x < _button_x + sprite_get_width(_sprite)
&& mouse_y < _button_y + sprite_get_height(_sprite)
&& mouse_check_button_released(mb_left)) {
    show_debug_message("Pressed");
    return true;
} else {
    return false;
}
