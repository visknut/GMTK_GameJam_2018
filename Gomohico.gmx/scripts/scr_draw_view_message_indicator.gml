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
if (obj_kingdom.read_all[_cur_char])
{
    draw_sprite(spr_reread, 0, _x + 14, _y + 42);
}
else
{
    _message_count = ds_queue_size(obj_kingdom.messages[_cur_char]);
    draw_text(_x + 18, _y + 42, string(_message_count));
}

if (_pressed)
{
    // since we requeue after a message has been read, and not after it starts to display,
    // copying from read_messages to messages would skip the last message
    if (ds_queue_empty(obj_kingdom.messages[_cur_char]))
    {
        // we always read from the messages variable, so refill queue with 'read_messages'
        ds_queue_copy(obj_kingdom.messages[_cur_char], obj_kingdom.read_messages[_cur_char]);
        ds_queue_clear(obj_kingdom.read_messages[_cur_char]);
    }

    // Open new message
    obj_button_message.event = ds_queue_dequeue(obj_kingdom.messages[_cur_char]);
    // we requeue in in the src_draw_message scripts after a message has been read, since we should only requeue choice events if a choice is not taken
    
    // we want to change the symbol immediately when all messages have been read
    if (ds_queue_empty(obj_kingdom.messages[_cur_char]))
    {
        // signal that all messages have been read
        obj_kingdom.read_all[_cur_char] = true;
    }
        
    with (obj_view)
    {
        current_view = VIEW_MESSAGE;
    }
}
