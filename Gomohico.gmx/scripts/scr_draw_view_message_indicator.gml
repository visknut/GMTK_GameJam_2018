/// scr_draw_view_favour indicators(x, y, cur_char, pressed)

var _x = argument[0];
var _y = argument[1];
var _cur_char = argument[2];
var _pressed = argument[3];

/// Draw message count.
var _message_count;

//draw_self();

draw_set_colour(c_black);
draw_roundrect(_x + 10, _y + 38, _x + 28, _y + 56, false);

draw_set_colour(c_white);
draw_set_font(fnt_small);
if (obj_kingdom.read_all)
{
    draw_sprite(spr_reread, 0, _x + 14, _y + 42);
}
else
{
    _message_count = ds_queue_size(obj_kingdom.messages);
    draw_text(_x + 18, _y + 42, string(_message_count));
}

if (_pressed)
{
    /// Open new message. Dequeue message and keep track of read messages
    if (obj_button_message.event != noone)
    {
        ds_queue_enqueue(obj_kingdom.read_messages, obj_button_message.event);
    }
    obj_button_message.event = ds_queue_dequeue(obj_kingdom.messages);

    if (ds_queue_empty(obj_kingdom.messages))
    {
        // we always read from the messages variable, so refill queue with 'read_messages'
        ds_queue_copy(obj_kingdom.messages, obj_kingdom.read_messages);
        ds_queue_clear(obj_kingdom.read_messages);
        // signal that all messages have been read
        obj_kingdom.read_all = true;
    }
    with (obj_view)
    {
        current_view = VIEW_MESSAGE;
    }
}
