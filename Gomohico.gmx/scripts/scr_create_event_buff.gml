/// scr_create_event_buff()

var _new_event = instance_create(0, 0, struct_event_buff);

var _nations = ar(YELLOW_NAME, GREEN_NAME, BLUE_NAME);
_new_event.nation = _nations[irandom(2)];

var _types = ar("speed", "spawn_rate", "hp");
_new_event.type = _types[irandom(2)];

_flavour_text = "";
_effect = "";

with (obj_kingdom)
{
    if (_new_event.nation == YELLOW_NAME && _new_event.type == "speed")
    {
        speed_modifiers[YELLOW] += YELLOW_SPEED;
        _flavour_text = "the lemmingfolk stocking up on carriages to help with their short legs.";
    }
    else if (_new_event.nation == YELLOW_NAME && _new_event.type == "hp")
    {
        hp_modifiers[YELLOW] += YELLOW_HEALTH;
        _flavour_text = "the lemmingfolk supplementing more protein in their daily diets.";
    }
    else if (_new_event.nation == YELLOW_NAME && _new_event.type == "spawn_rate")
    {
        spawn_modifiers[YELLOW] -= 5;
        if (spawn_modifiers[YELLOW] < 1)
        {
            spawn_modifiers[YELLOW] = 1;
        }
        flavour_text = "a recent surge in birthrates amongst lemmings- probably due to it being summer.";
    }
    else if (_new_event.nation == BLUE_NAME && _new_event.type == "speed")
    {
        speed_modifiers[BLUE] += BLUE_SPEED;
        _flavour_text = "a new hype amongst elephants to wear rollerskates.";
    }
    else if (_new_event.nation == BLUE_NAME && _new_event.type == "hp")
    {
        hp_modifiers[BLUE] += BLUE_HEALTH;
        _flavour_text = "a shipment of armor that has recently arrived in the biggest haven of the elephants";
    }
    else if (_new_event.nation == BLUE_NAME && _new_event.type == "spawn_rate")
    {
        spawn_modifiers[BLUE] -= 5;
        if (spawn_modifiers[BLUE] < 1)
        {
            spawn_modifiers[BLUE] = 1;
        }
        _flavour_text = "the return of an elephantfrigate that was out on their ongoing conquest of the new world.";
    }
    else if (_new_event.nation == GREEN_NAME && _new_event.type == "speed")
    {
        speed_modifiers[GREEN] += GREEN_SPEED;
        _flavour_text = "the deerfolk stocking up on carriages. I wonder if they pull them themselves.";
    }
    else if (_new_event.nation == GREEN_NAME && _new_event.type == "hp")
    {
        hp_modifiers[GREEN] += GREEN_HEALTH;
        _flavour_text = "the deerfolk becoming more and more adept at blocking arrows with their antlers!";
    }
    else if (_new_event.nation == GREEN_NAME && _new_event.type == "spawn_rate")
    {  
        spawn_modifiers[GREEN] -= 5;
        if (spawn_modifiers[GREEN] < 1)
        {
            spawn_modifiers[GREEN] = 1;
        }
        _flavour_text = "a rising trend of young deer joining their voluntary army due to it providing generous student loans.";
    }
}

_new_event = scr_enqueue_message(_new_event, CHAR_DIPLOMAT,
"How nice to meet you here, high constable, I was just on my way to see you!

Now let me tell you what I know: we've had reports of " + _flavour_text);

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
