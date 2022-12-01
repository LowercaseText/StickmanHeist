midy = global.CurrentCharacter.y;
topy = midy + 30;
boty = midy - 30;
y = random_range(topy, boty);
yvel =  random_range(-3, 3);
active = false;
sprite_index = choose(sprPinBig, sprPinMeduim, sprPinSmall, sprPinExtraSmall);