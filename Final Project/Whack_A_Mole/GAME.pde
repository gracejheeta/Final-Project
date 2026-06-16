void game() {
  //ground
  background(mediumBrown);
  strokeWeight(100);
  stroke(darkBrown);
  noFill();
  rect(0, 0, width, height);

  //holes
  for (int x = 200; x <= 800; x += 200) {
    for (int y = 200; y <= 800; y += 200) {
      hole(x, y, 50);    
    }
  }
  
}

void gameClicks() {
  
}
