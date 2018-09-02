/// scr_draw_text_button(x, y, text, col1, col2)

var _x              = argument[0];
var _y              = argument[1];
var _text           = argument[2];
var _colour1        = argument[3];
var _colour2        = argument[4];

var _border = 4;

draw_set_font(fnt_small);
var _text_width = string_width(_text);
var _text_height = string_height(_text);


// Check if the button is being hovered.
if (mouse_x > _x
&& mouse_y > _y
&& mouse_x < _x + _text_width + (2*_border)
&& mouse_y < _y + _text_height + (2*_border)) {
    draw_set_colour(_colour1);
    draw_rectangle(_x, _y, _x + _text_width + (2*_border), _y + _text_height + (2*_border), true);
    draw_rectangle(_x + 1, _y + 1 , _x + _text_width + (2*_border) - 1, _y + _text_height + (2*_border) -1, true);
    draw_text(_x + _border, _y + _border, _text);
} else {
    draw_set_colour(_colour1);
    draw_rectangle(_x, _y, _x + _text_width + (2*_border), _y + _text_height + (2*_border), false);
    draw_set_colour(_colour2);
    draw_text(_x + _border, _y + _border, _text);
}

// Check if the button is being pressed.
if (mouse_x > _x
&& mouse_y > _y
&& mouse_x < _x + _text_width + (2*_border)
&& mouse_y < _y + _text_height + (2*_border)
&& mouse_check_button_released(mb_left)) {
    scr_button_sound(true);
    return true;
} else {
    return false;
}
