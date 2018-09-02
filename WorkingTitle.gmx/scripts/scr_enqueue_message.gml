/// scr_enqueue_message(int character, str content)
var _message = instance_create(0, 0, struct_message);
_message.character = argument[0];
_message.content = argument[1];
ds_queue_enqueue(obj_kingdom.messages, _message);

return _message;
