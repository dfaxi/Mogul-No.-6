/// @description Insert description here
// You can write your code in this editor
//var Y = 625 - ( 0.05 * view_current); 
//draw_sprite(S_BaseMidground, 0, x, Y);
//show_debug_message(view_yport[0]);

if options == true {
	draw_sprite_ext(S_StartScreen, 0, 0, 0, 2, 2, 0, -1, 1);
	draw_set_font(Font2);
	draw_set_color(c_white);
	draw_text(x + 200, y + 400, "Volume");
	draw_set_font(font0);
	draw_rectangle(x + 100, y + 500, x + 700, y + 510, true);
	draw_sprite(S_Volume, 0, volumeSpot, y + 505);
	draw_set_font(Font2);
	draw_text(x + 200, y + 600, "Save and Quit");
	draw_sprite_ext(S_LudIdle, 0, x + 150, spot, 2, 2, 0, -1, 1);
	draw_text(x + 200, y + 800, "Controls");
		draw_set_font(font0);
	draw_text(x + 100, y + 900, "a,d or left, right = run space = jump");
}


























































































































