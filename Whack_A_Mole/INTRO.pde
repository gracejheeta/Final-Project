void intro() {
  background(0);
  fill(lightBrown);
  rect(0, 0, width, 300);
  fill(mediumBrown);
  rect(0, 300, width, 300);
  fill(darkBrown);
  rect(0, 600, width, 300);
  fill(grass);
  rect(0, 900, width, 100);
}

void introClicks() {
  mode = GAME;
}
