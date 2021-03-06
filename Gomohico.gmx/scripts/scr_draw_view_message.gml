/// scr_draw_view_message()

draw_set_colour(c_white);
draw_rectangle(0, 416, 720, 560, false);
draw_set_colour(c_black);
draw_rectangle(4, 420, 716, 556, false);

with (obj_button_message)
{
    switch(event.object_index)
    {
        case struct_event_embezzlement :
        {
            scr_draw_message_embezzlement(event);
            break;
        }
        case struct_event_tribute :
        {
            scr_draw_message_tribute(event);
            break;
        }
        default :
        {
            scr_draw_message(event);
            break;
        }
    } 
    scr_draw_mugshot(event.message.character);
    
    if (keyboard_check_pressed(vk_anykey))
    {
        if (obj_view.alarm[0] > -1) {
           // set alarm for scr_draw_str_cbyc on "draw every character"
            obj_view.alarm[0] = -1;
        } else {
            // reset alarm for scr_draw_str_cbyc
            obj_view.alarm[0] = -2;
            scr_dequeue_message(event.message.character);
        }
    }
}
