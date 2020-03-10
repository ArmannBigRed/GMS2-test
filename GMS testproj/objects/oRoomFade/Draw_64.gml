fontSet(fntFin, fa_center,fa_middle);
if(alpha == 1){
	alphaText = clamp(alphaText + percent(0.5), 0, 1)
	drawText(guiCenterX(), guiCenterY(), "Fin.", 1, c_white,0, alphaText);
};