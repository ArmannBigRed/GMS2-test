fontSet(fntRegular, fa_center, fa_middle);

drawSprite(sCoin, 0, guiWidth()*percent(3), guiHeight()*percent(5));
drawText(guiWidth()*percent(9), guiHeight()*percent(5),string(COINS) + "/" + string(AVAILABLE_COINS), 1, c_softred);

drawSprite(sCandy, 0, guiWidth()*percent(3), guiHeight()*percent(10));
drawText(guiWidth()*percent(9), guiHeight()*percent(10),string(CANDY) + "/" + string(AVAILABLE_CANDY), 1, c_softred);