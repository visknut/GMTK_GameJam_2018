/// scr_generate_triggered_events()

with (obj_kingdom)
{
    if (money < 0)
    {
        scr_create_event_money_low();
    }
    
    if (money > 999)
    {
        scr_create_event_money_high();
    }
}
