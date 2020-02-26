tid = instance_create_depth(global.camX, global.camY + global.halfViewHeight - 60, -1, oTextbox);
speech = ds_list_create();
ds_list_add(speech, "Hey, Daba!...", "We've been waiting for you!\nThings have become dire...", "The rogue druid Zelak's destruction is expanding.\nOur forests are burning.\nAnimals are being enslaved.\nWe need a hero...", "Now that you're here, Zara would like to see you in \nthe temple. Please visit her at once...");
tid.textList = speech;