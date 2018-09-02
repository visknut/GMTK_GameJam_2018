/// scr_generate_random_events()

// Pick one of the following events.
switch (irandom(4))
{
    case 0:
    {
        scr_create_event_view_palace();
        break;
    }
    case 1:
    {
        scr_create_event_palace();
        break;
    }
    case 2:
    {
        scr_create_event_tribute();
        break;
    }
    case 3:
    {
        scr_create_event_collaberation();
        break;
    }
    case 4:
    {
        scr_create_event_farm();
        break;
    }
}  

// Flip a coin for embezzlement.
if (irandom(1) == 0)
{
    scr_create_event_embezzlement();
}
