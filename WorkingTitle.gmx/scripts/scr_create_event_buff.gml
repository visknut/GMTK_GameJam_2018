/// scr_create_event_buff()

var _new_event = instance_create(0, 0, struct_event_buff);

var _nations = ar(YELLOW_NAME, GREEN_NAME, BLUE_NAME);
_new_event.nation = _nations[irandom(2)];

var _types = ar("speed", "spawn_rate", "hp");
_new_event.type = _types[irandom(2)];

with (obj_kingdom)
{
    if (_nations == YELLOW_NAME && _new_event.type == "speed")
    {
        yellow_speed_modifier *= 1.3;
    } else if (_nations == YELLOW_NAME && _new_event.type == "hp")
    {
        yellow_hp_modifier *= 1.3;
    } else if (_nations == YELLOW_NAME && _new_event.type == "spawn_rate")
    {
        yellow_spawn_modifier *= 1.3;
    } else if (_nations == BLUE_NAME && _new_event.type == "speed")
    {
        blue_speed_modifier *= 1.3;
    } else if (_nations == BLUE_NAME && _new_event.type == "hp")
    {
        blue_hp_modifier *= 1.3;
    } else if (_nations == BLUE_NAME && _new_event.type == "spawn_rate")
    {
        blue_spawn_modifier *= 1.3;
    } else if (_nations == GREEN_NAME && _new_event.type == "speed")
    {
        green_speed_modifier *= 1.3;
    } else if (_nations == GREEN_NAME && _new_event.type == "hp")
    {
        green_hp_modifier *= 1.3;
    } else if (_nations == GREEN_NAME && _new_event.type == "spawn_rate")
    {
        green_spawn_modifier *= 1.3;
    }
}

_new_event.message = scr_enqueue_message(CHAR_DIPLOMAT, "TODO: event_buff");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
