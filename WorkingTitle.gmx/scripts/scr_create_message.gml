/// scr_create_message(int character, str content)
var _message = instance_create(0, 0, struct_message);
_message.character = argument[0];
_message.content = argument[1];
return _message
