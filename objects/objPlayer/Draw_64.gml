//draw_sprite_ext(sprUIcorner, 0, 175, 593, 3.5, 3.5, 0, c_white, 1);
var stx = 175;
var sty = 593;
var scale = 7;
draw_sprite_ext(sprHead, 0, stx, sty, scale, scale, 0, c_white, 1);
draw_sprite_ext(sprArm, 0, stx, sty, scale, scale, 0, c_white, 1);
draw_sprite_ext(sprArm, 0, stx + 27, sty, scale, scale, 0, c_white, 1);
draw_sprite_ext(sprTorso, 0, stx, sty, scale, scale, 0, c_white, 1);
draw_sprite_ext(sprLeg, 0, stx, sty + 35, scale, scale, 0, c_white, 1);
draw_sprite_ext(sprLeg, 0, stx + 13, sty + 35, scale, scale, 0, c_white, 1);
//draw_sprite_ext(sprUIcorner, 0, 175, 593, 3.5, 3.5, 0, c_white, 1);
var toolbarscale = 0.25;
var toolbarx = 0;
var toolbary = 0;

var inventoryitemscale = 3;

draw_sprite_ext(sprToolBar, 0, toolbarx, toolbary, toolbarscale, toolbarscale, 0, c_white, 1);
draw_sprite_ext(sprToolBar, 0, toolbarx  + 256 * toolbarscale * 1, toolbary, toolbarscale, toolbarscale, 0, c_white, 1);
draw_sprite_ext(sprToolBar, 0, toolbarx  + 256 * toolbarscale * 2, toolbary, toolbarscale, toolbarscale, 0, c_white, 1);
draw_sprite_ext(sprToolBar, 0, toolbarx  + 256 * toolbarscale * 3, toolbary, toolbarscale, toolbarscale, 0, c_white, 1);
draw_sprite_ext(sprToolBar, 0, toolbarx  + 256 * toolbarscale * 4, toolbary, toolbarscale, toolbarscale, 0, c_white, 1);

draw_sprite_ext(inventory[0].Icon, 0, toolbarx + 120 * toolbarscale * 1.7  - sprite_get_width(inventory[0].Icon), toolbary + 120 * toolbarscale * 1.3  - sprite_get_height(inventory[0].Icon), inventoryitemscale, inventoryitemscale, 0, c_white, 1);
draw_sprite_ext(inventory[1].Icon, 0, toolbarx + 120 * toolbarscale * 3.7  - sprite_get_width(inventory[1].Icon), toolbary + 120 * toolbarscale * 1.3  - sprite_get_height(inventory[1].Icon), inventoryitemscale, inventoryitemscale, 0, c_white, 1);
draw_sprite_ext(inventory[2].Icon, 0, toolbarx + 120 * toolbarscale * 5.9  - sprite_get_width(inventory[2].Icon), toolbary + 120 * toolbarscale * 1.3 - sprite_get_height(inventory[2].Icon), inventoryitemscale, inventoryitemscale, 0, c_white, 1);
draw_sprite_ext(inventory[3].Icon, 0, toolbarx + 120 * toolbarscale * 8.05  - sprite_get_width(inventory[3].Icon), toolbary + 120 * toolbarscale * 1.3  - sprite_get_height(inventory[3].Icon), inventoryitemscale, inventoryitemscale, 0, c_white, 1);
draw_sprite_ext(inventory[4].Icon, 0, toolbarx + 120 * toolbarscale * 10.27  - sprite_get_width(inventory[4].Icon), toolbary + 120 * toolbarscale * 1.3  - sprite_get_height(inventory[4].Icon), inventoryitemscale, inventoryitemscale, 0, c_white, 1);
//draw_sprite_ext(inventory[1], 0, toolbarx, toolbary, inventoryitemscale, inventoryitemscale, 0, c_white, 1);
//draw_sprite_ext(inventory[2], 0, toolbarx, toolbary, inventoryitemscale, inventoryitemscale, 0, c_white, 1);
//draw_sprite_ext(inventory[3], 0, toolbarx, toolbary, inventoryitemscale, inventoryitemscale, 0, c_white, 1);
//draw_sprite_ext(inventory[4], 0, toolbarx, toolbary, inventoryitemscale, inventoryitemscale, 0, c_white, 1);