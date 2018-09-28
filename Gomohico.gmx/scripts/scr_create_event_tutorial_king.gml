/// scr_create_event_tutorial_king()

var _new_event = instance_create(0, 0, struct_event_tutorial_king);

_new_event = scr_enqueue_message(_new_event, CHAR_KING,
"Welcome high constable,#
I'm pleased with your arrival, since your predecessor was an incompetent buffoon!#"+
"We are counting on you to defend our kingdom.");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
