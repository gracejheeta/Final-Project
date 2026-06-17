void hole(int x, int y, int w) {
  fill(grass);
  strokeWeight(5);
  stroke(darkBrown);
  circle(x, y, w);
}

void grass(int x, int y, int size) {
  //(x, y): bottom middle point, size: length of entire shape
  fill(grass);
  noStroke();
  triangle(x - size/2, y, x, y, x - size/4, y - size/2);
  triangle(x + size/2, y, x, y, x + size/4, y - size/2 - 10);
}

void mole(int x, int y, int d) {
  stroke(0);
  strokeWeight(3);
  //face
  fill(darkBrown);
  circle(x, y, d);
  
  //inner circle
  fill(lightBrown);
  circle(x, y + d/6, d/2);
  
  //nose
  fill(pink);
  circle(x, y + d/10, d/10);
  
  //mouth
  noFill();
  arc(x, y + d/6, d/3, d/3, PI/6, 5 * PI/6);
  
  // left eye
  fill(0);
  circle(x - d/5, y - d/5, d/6);
  //right eye
  circle(x + d/5, y - d/5, d/6);
  
  //top left whisker
  line(x - d/8, y + d/15, x - d/3, y);
  //bottom left whisker
  line(x - d/8, y + 2 * d/15, x - d/3, y + d/15);
  
  //top right whisker
  line(x + d/8, y + d/15, x + d/3, y);
  //bottom left whisker
  line(x + d/8, y + 2 * d/15, x + d/3, y + d/15);
}

void checkForOverlaps() {
  for (int i = 0; i < numHoles; i ++) {
    for (int j = i + 1; j < numHoles; j ++) {
      if ( dist(holeX[i], holeY[i], holeX[j], holeY[j]) <= 100 ) {
        holeX[i] = int(random(100, 900));
        holeY[i] = int(random(100, 900));
        checkForOverlaps();
      } //end if statement ============================================
    }
  } // end outer for loop ==============================================
  
} // end checkForOverlaps() ==============================================
