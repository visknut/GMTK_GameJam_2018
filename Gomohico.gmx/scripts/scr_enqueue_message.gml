/// scr_enqueue_message(event, int character, str content)

var _event = argument[0];
var _character = argument[1];
var _text = argument[2];

var _message = instance_create(0, 0, struct_message);
_message.character = _character;
_message.content = _text;

_event.message = _message;
ds_queue_enqueue(obj_kingdom.messages[_character], _event);

return _event;
