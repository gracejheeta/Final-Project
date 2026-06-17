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

void mole(int x, int y) {
  
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
