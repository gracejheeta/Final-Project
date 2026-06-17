void game() {
  //ground
  background(mediumBrown);
  strokeWeight(100);
  stroke(darkBrown);
  noFill();
  rect(0, 0, width, height);

  //display score
  fill(255);
  textSize(50);
  text(redScore + " - " + blueScore, width/2, 25);

  //draw grass
  for (int i = 0; i < numGrass; i ++) {
    grass(grassX[i], grassY[i], 50); 
  }
  
  //draw all holes
  for (int i = 0; i < numHoles; i ++) {
    hole(holeX[i], holeY[i], holeD); 
    
    //draw moles if alive
    if (alive[i]) mole(holeX[i], holeY[i], holeD);
    
    //paddle hitting a mole
    if ( dist(holeX[i], holeY[i], redX, redY) < (holeD - redD) && alive[i]) {
      redScore ++;
      redv *= 1.2;
      alive[i] = false;
    }
    
    if ( dist(holeX[i], holeY[i], blueX, blueY) < (holeD - blueD) && alive[i] ) {
      blueScore ++;
      bluev *= 1.2;
      alive[i] = false;
    }
    
  } // end for loop ============================================================
  
  //show and hide moles randomly
  if (frameCount % 10 == 0) {
    int hi = int(random(0, numHoles));
    alive[hi] = !alive[hi];
  }
  
  //draw paddles
  strokeWeight(0);
  fill(red);
  circle(redX, redY, redD);
  fill(blue);
  circle(blueX, blueY, blueD);
  
  //move paddles
  if (wkey) redY -= redv;
  if (skey) redY += redv;
  if (akey) redX -= redv;
  if (dkey) redX += redv;
  if (upkey) blueY -= bluev;
  if (downkey) blueY += bluev;
  if (leftkey) blueX -= bluev;
  if (rightkey) blueX += bluev;
  
  //paddle limits
  if (redX < 50 + redD/2) redX = 50 + redD/2;
  if (redX > 950 - redD/2) redX = 950 - redD/2;
  if (redY < 50 + redD/2) redY = 50 + redD/2;
  if (redY > 950 - redD/2) redY = 950 - redD/2;
  
  if (blueX < 50 + blueD/2) blueX = 50 + blueD/2;
  if (blueX > 950 - blueD/2) blueX = 950 - blueD/2;
  if (blueY < 50 + blueD/2) blueY = 50 + blueD/2;
  if (blueY > 950 - blueD/2) blueY = 950 - blueD/2;
  
}

void gameClicks() {
  
}
