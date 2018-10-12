/// scr_dequeue_message(cur_char)
_cur_char = argument[0];

// Requeue previous event. This also takes care of only requeueing the last event
// in case of a follow_up_event chain
if (obj_button_message.event != noone)
{ 
    _prev_char = obj_button_message.event.message.character;
    ds_queue_enqueue(obj_kingdom.read_messages[_prev_char], obj_button_message.event); 
}

// refill message queue with read messages if empty
if (ds_queue_empty(obj_kingdom.messages[_cur_char]))
{
    // we always read from the messages variable, so refill queue with 'read_messages'
    ds_queue_copy(obj_kingdom.messages[_cur_char], obj_kingdom.read_messages[_cur_char]);
    ds_queue_clear(obj_kingdom.read_messages[_cur_char]);

    // Now we have read all messages of a character, so return to character_screen
    obj_button_message.event = noone;
    obj_view.current_view = VIEW_MESSAGES;
} else {
    // Open new message
    obj_button_message.event = ds_queue_dequeue(obj_kingdom.messages[_cur_char]);

    // we want to change the symbol immediately when all messages have been read
    if (ds_queue_empty(obj_kingdom.messages[_cur_char]))
    {
        // signal that all messages have been read
        obj_kingdom.read_all[_cur_char] = true;
    }
    
    // We either just started to read a message
    // or we continue reading messages from this character
    obj_view.current_view = VIEW_MESSAGE;
}
