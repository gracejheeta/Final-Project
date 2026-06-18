void game() {
  intro.pause();
  gameover.rewind();
 
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
    grass(grassX[i], grassY[i], 20); 
  }
  
  //draw all holes
  for (int i = 0; i < numHoles; i ++) {
    hole(holeX[i], holeY[i], holeD); 
    
    //draw moles if alive
    if (alive[i]) mole(holeX[i], holeY[i], holeD);
    
    // red paddle hitting a mole
    if ( dist(holeX[i], holeY[i], redX, redY) < (holeD/2 - redD/2) && alive[i]) {
        redScore ++;
        redvx *= 1.2;
        redvy *= 1.2;
        alive[i] = false;
        star(holeX[i], holeY[i]);
    }
    
    // blue paddle hitting a mole
    if ( dist(holeX[i], holeY[i], blueX, blueY) < (holeD/2 - blueD/2) && alive[i] ) {
      blueScore ++;
      bluevx *= 1.2;
      bluevy *= 1.2;
      alive[i] = false;
      star(holeX[i], holeY[i]);
    }
    
  } // end for loop ============================================================
  
  //show and hide moles randomly
  if (frameCount % 10 == 0) {
    int randoNum = int(random(0, numHoles));
    alive[randoNum] = !alive[randoNum];
  }
  
  //draw paddles
  strokeWeight(0);
  fill(red);
  circle(redX, redY, redD);
  fill(blue);
  circle(blueX, blueY, blueD);
  
  //move paddles
  //red
  if (wkey) redY -= redvy;
  if (skey) redY += redvy;
  if (akey) redX -= redvx;
  if (dkey) redX += redvx;
  //blue
  if (upkey) blueY -= bluevy;
  if (downkey) blueY += bluevy;
  if (leftkey) blueX -= bluevx;
  if (rightkey) blueX += bluevx;
  
  //paddle limits
  //red
  if (redX < 50 + redD/2) redX = 50 + redD/2;
  if (redX > 950 - redD/2) redX = 950 - redD/2;
  if (redY < 50 + redD/2) redY = 50 + redD/2;
  if (redY > 950 - redD/2) redY = 950 - redD/2;
  //blue
  if (blueX < 50 + blueD/2) blueX = 50 + blueD/2;
  if (blueX > 950 - blueD/2) blueX = 950 - blueD/2;
  if (blueY < 50 + blueD/2) blueY = 50 + blueD/2;
  if (blueY > 950 - blueD/2) blueY = 950 - blueD/2;
  
  //pause button
  strokeWeight(5);
  tactileCircle(970, 30, 50, color(0), red, yellow);
  stroke(color(0));
  line(965, 20, 965, 40);
  line(975, 20, 975, 40);
  
  //switch to gameover
  if (redScore == targetScore) mode = GAMEOVER;
  if (blueScore == targetScore) mode = GAMEOVER;
}

void gameClicks() {
  if ( dist(mouseX, mouseY, 970, 30) < 25) {
    mode = PAUSE;
  }
}
