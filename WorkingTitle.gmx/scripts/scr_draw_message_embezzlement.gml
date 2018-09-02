/// scr_draw_message_embezzlement(event)

var _event = argument[0];

scr_draw_message(_event.message.content);

if (scr_draw_text_button(220, 490, "1. Sure, lets do it.", c_white, c_black))
{
    obj_button_message.event = scr_create_event_embezzlement_accepted(_event.amount);
    // reset typing animation.
    obj_view.alarm[0] = -2;
} else if (scr_draw_text_button(220, 515, "2. I going to need the money for other things.", c_white, c_black))
{
    obj_button_message.event = scr_create_event_embezzlement_ignored();
    // reset typing animation.
    obj_view.alarm[0] = -2;
}
