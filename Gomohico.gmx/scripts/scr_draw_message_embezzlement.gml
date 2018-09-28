/// scr_draw_message_embezzlement(event)

var _event = argument[0];

draw_set_colour(c_white);
scr_draw_message(_event.message.content);

if (obj_view.alarm[0] < 0 && scr_draw_text_button(220, 525, "1. Sure, lets do it.", c_white, c_black))
{
    obj_button_message.event = scr_create_event_embezzlement_accepted(_event.amount);
    // reset typing animation.
    obj_view.alarm[0] = -2;
} else if (obj_view.alarm[0] < 0 && scr_draw_text_button(370, 525, "2. This is not the right moment.", c_white, c_black))
{
    obj_button_message.event = scr_create_event_embezzlement_ignored();
    // reset typing animation.
    obj_view.alarm[0] = -2;
}
