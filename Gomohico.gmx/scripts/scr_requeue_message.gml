/// scr_enqueue_message(event)

var _event = argument[0];
ds_queue_enqueue(obj_kingdom.read_messages[_event.message.character], _event);
