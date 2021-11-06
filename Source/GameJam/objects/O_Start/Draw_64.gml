/// @description Insert description here
// You can write your code in this editor

draw_set_font(Font2);
draw_set_color(c_white);
draw_text(x + 300, y + 400, "Start");
draw_text(x + 300, y + 500, "There Are No Settings");
draw_text(x + 300, y + 600, "Quit");

draw_sprite_ext(S_LudIdle, 0 , x + 250, global.spot, 2, 2,0, -1, 1);



show_debug_message(global.spot);