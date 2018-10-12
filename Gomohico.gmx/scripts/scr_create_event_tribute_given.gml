/// scr_create_event_tribute_given(int amount, str nation)

var _amount = argument[0];
var _nation = argument[1];

var _new_event = instance_create(0, 0, struct_event_tribute_given);

_new_event.favour_change = 1;
scr_add_favour(CHAR_DIPLOMAT, _new_event.favour_change);

with (obj_kingdom)
{
    money -= _amount;
    tributes[_nation] = true;
}

_new_event = scr_enqueue_message(_new_event, CHAR_DIPLOMAT,
"That is great news! I will immediately send note of your decision to the relevant parties.
They will be joyous!");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}

return _new_event;
