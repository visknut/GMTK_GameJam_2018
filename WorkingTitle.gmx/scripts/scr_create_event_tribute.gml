/// scr_create_event_tribute()

var _new_event = instance_create(0, 0, struct_event_tribute);

var _nations = ar(YELLOW_NAME, GREEN_NAME, BLUE_NAME);
_new_event.nation = _nations[irandom(2)];

var _amounts = ar(20, 40, 60, 80, 100);
_new_event.amount = _amounts[irandom(4)];

_new_event = scr_enqueue_message(_new_event, CHAR_DIPLOMAT,
"");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
