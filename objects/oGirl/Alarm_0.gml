tid = instance_create_depth(global.camX, global.camY + global.halfViewHeight - 60, -1, oTextbox);
speech = ds_list_create();
ds_list_add(speech, "Hey, Koda!...", "We've been waiting for you! Things have become dire...", "Krex's destruction has been expanding.\nOur forests are burning.\nAnimals are being enslaved.\nWe need a hero...", "Now that you're here, Vara would like to see you in \nthe temple. Please visit her at once...");
tid.textList = speech;