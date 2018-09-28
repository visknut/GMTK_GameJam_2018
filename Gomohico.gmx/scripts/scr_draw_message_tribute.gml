/// scr_draw_message_tribute(event)

var _event = argument[0];

draw_set_colour(c_white);
scr_draw_message(_event.message.content);
// reset typing animation.

if (obj_view.alarm[0] < 0 && scr_draw_text_button(220, 525, "1. Sure, lets do it.", c_white, c_black))
{
    obj_button_message.event = scr_create_event_tribute_given(_event.amount, _event.nation);
    // reset typing animation.
    obj_view.alarm[0] = -2;
} else if (obj_view.alarm[0] < 0 && scr_draw_text_button(370, 525, "2. I think we will be fine..", c_white, c_black))
{
    obj_button_message.event = scr_create_event_tribute_ignored();
    // reset typing animation.
    obj_view.alarm[0] = -2;
}

