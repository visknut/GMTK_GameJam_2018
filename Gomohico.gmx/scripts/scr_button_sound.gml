/// scr_button_sound(bool quiet)

if (argument[0]) //quiet
{
switch (irandom(2))
{
    case 0:
        audio_play_sound(sound1_button_quiet, 1, false);
        break;
    case 1:
        audio_play_sound(sound2_button_quiet, 1, false);
        break;
    case 2:
        audio_play_sound(sound3_button_quiet, 1, false);
        break;
}
}
else //loud
{
switch (irandom(2))
{
    case 0:
        audio_play_sound(sound1_button, 1, false);
        break;
    case 1:
        audio_play_sound(sound2_button, 1, false);
        break;
    case 2:
        audio_play_sound(sound3_button, 1, false);
        break;
}
}
