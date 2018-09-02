/// scr_create_event_tribute_given(int amount, str nation)

var _amount = argument[0];
var _nation = argument[1];

var _new_event = instance_create(0, 0, struct_event_tribute_given);

_new_event.favour_change = 1;

with (obj_kingdom)
{
    money -= _amount;
    favour_diplomat += 1;
    switch (_nation)
    {
        case GREEN_NAME:
        {
            green_tributed = true;
            break;
        }
        case YELLOW_NAME:
        {
            yellow_tributed = true;
            break;
        }
        case blue_NAME:
        {
            blue_tributed = true;
            break;
        }
    }
}

_new_event.message = scr_enqueue_message(CHAR_DIPLOMAT, "TODO: event_tribute_given");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
