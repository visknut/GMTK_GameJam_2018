/// scr_draw_view_message()

draw_set_colour(c_black);
draw_rectangle(0, 416, 720, 560, false);

with (obj_button_message)
{
    scr_draw_mugshot(message.character);
    scr_draw_message(message.content);
}
