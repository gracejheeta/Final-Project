void game() {
  //ground
  background(mediumBrown);
  strokeWeight(100);
  stroke(darkBrown);
  noFill();
  rect(0, 0, width, height);

  //draw grass
  for (int i = 0; i < numGrass; i ++) {
    grass(grassX[i], grassY[i], 50); 
  }

  //holes
  /*for (int x = 200; x <= 800; x += 200) {
    for (int y = 200; y <= 800; y += 200) {
      hole(x, y, 100);    
    }
  }*/
  
  for (int i = 0; i < numHoles; i ++) {
    hole(holeX[i], holeY[i], 100); 
  }
}

void gameClicks() {
  
}
