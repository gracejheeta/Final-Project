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
  
  //draw all holes
  for (int i = 0; i < numHoles; i ++) {
    hole(holeX[i], holeY[i], holeD); 
  }
  
  //draw moles if alive
  for (int i = 0; i < numHoles; i ++) {
    if (alive[i]) mole(holeX[i], holeY[i], holeD);
  }
  
  //show and hide moles randomly
  if (frameCount % 10 == 0) {
    int hi = int(random(0, numHoles));
    alive[hi] = !alive[hi];
  }
  
}

void gameClicks() {
  
}
