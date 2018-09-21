/// scr_draw_view_favour

draw_set_colour(c_white);
draw_rectangle(0, 416, 720, 560, false);
draw_set_colour(c_black);
draw_rectangle(4, 420, 716, 556, false);

var _x = 64;
var _y = 426;
var _mugshot_width = 128;
var _spacing = 32;
var _favour = 0;
var _radius = 55;

var _brake = 50;
if (alarm[1] == -1)
{
    alarm[1] = 360*_brake;
}

//we draw the mugshots of all parties that can have favour
for (var _i = CHAR_KING; _i < CHAR_CLERK; _i += 1)
{
    draw_sprite(spr_mugshot, _i, _x, _y);
    // if we have more than zero favour with a character,
    // draw hearts in a cirle around them for each favour
    _favour = obj_kingdom.favours[_i];
    if (_favour > 0)
    {
        var _radian = 2*pi/_favour;
        for (var _j = 0; _j < _favour; _j += 1)
        {
            draw_sprite(spr_favour, alarm[1]%18, _x + _radius * cos(_radian*_j-alarm[1]/_brake) + 56,
                                                 _y + _radius * sin(_radian*_j-alarm[1]/_brake) + 50);
        }
    }
    _x += _mugshot_width + _spacing;
}
