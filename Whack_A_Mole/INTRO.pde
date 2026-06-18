void intro() {
  gameover.pause();
  game.rewind();
  intro.play();
  
  background(lightBrown);
  
  //display title
  textFont(mounth);
  textSize(100);
  text("WHACK A MOLE!", 500, 250);
  mole(740, 250, 80);
  
  //map number of holes and slider
  numHoles = int(map(sliderX, 300, 700, 5, 16));
  fill(cream);
  textSize(60);
  text("Pick the number of holes:", 500, 400);
  
  //slider line
  strokeWeight(5);
  stroke(mediumBrown);
  line(300, 500, 700, 500);
  
  //slider circle
  fill(grass);
  if (mouseX > 300 && mouseX < 700 && mouseY > 475 && mouseY < 525) stroke(cream);
  else stroke(mediumBrown);
  circle(sliderX, 500, 50);
  
  //slider text
  fill(cream);
  textSize(35);
  text(numHoles, sliderX, 500);
  
  //start button
  strokeWeight(10);
  tactileRect(400, 650, 200, 100, mediumBrown, cream, grass);
  fill(cream);
  textSize(50);
  text("START", 500, 700);
  
  //initialize hole and alive arrays
  holeX = new int[numHoles];
  holeY = new int[numHoles];
  alive = new boolean[numHoles];
  
  for (int i = 0; i < numHoles; i ++) {
    holeX[i] = int(random(100, 900));
    holeY[i] = int(random(100, 900));
    alive[i] = false;
  }
  checkForOverlaps();
  
}

void introClicks() {
  controlSlider();
  
  //press start button
  if (mouseX > 400 && mouseX < 600 && mouseY > 650 && mouseY < 750) {
    mode = GAME;
    game.loop();
  }
}

void introDrags() {
  controlSlider();
}
