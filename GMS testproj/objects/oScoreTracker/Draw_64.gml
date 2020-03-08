fontSet(fntRegular, fa_center, fa_middle);
draw_sprite_ext(sCoin, 0, x+100, y+50, 1, 1, 1, c_white, 1)
draw_sprite_ext(sCandy, 0, x+100, y+95, 1, 1, 1, c_white, 1)
//TODO
//make the /x number a variable gotten from each level
drawText(x+170, y+50,string(COINS) + "/8", 1, c_white);
drawText(x+170, y+95,string(CANDY) + "/3", 1, c_white);
