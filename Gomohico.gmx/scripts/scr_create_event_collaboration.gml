/// scr_create_event_collaboration()

var _new_event = instance_create(0, 0, struct_event_collaboration);

var _nations = ar(YELLOW_NAME, GREEN_NAME, BLUE_NAME);
_new_event.nation1 = pick(_nations);

switch (_new_event.nation1)
{
    case YELLOW_NAME:
    {
        _nations = ar(GREEN_NAME, BLUE_NAME);
        _new_event.nation2 = _nations[irandom(1)];
        _new_event.location = EAST;
        break;
    }
    case BLUE_NAME:
    {
        _nations = ar(GREEN_NAME, YELLOW_NAME);
        _new_event.nation2 = _nations[irandom(1)];
        _new_event.location = WEST;
        break;
    }
    case GREEN_NAME:
    {
        _nations = ar(YELLOW_NAME, BLUE_NAME);
        _new_event.nation2 = _nations[irandom(1)];
        _new_event.location = SOUTH;
        break;
    }

    _new_event = scr_enqueue_message(_new_event, CHAR_DIPLOMAT,
    "But that's not all- I have had news from a trusted spy that the " +
    _nations[0] + " and " + _nations[1] + " " +
    pick(diplomat_collaboration_sentences) +
    "#If they were to attack, they might join forces!");

    ds_list_add(events, _new_event);
}

