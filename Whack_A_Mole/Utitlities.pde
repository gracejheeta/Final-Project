void tactileRect(int x, int y, int w, int h, color normalStroke, color newStroke, color Fill) {
  // if mouse is inside rect
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(newStroke);
  } else {
    stroke(normalStroke);
  }
  
  fill(Fill);
  rect(x, y, w, h);
}

void tactileCircle(int x, int y, int d, color normalStroke, color newStroke, color Fill) {
  // if mouse is inside circle
  if ( dist(mouseX, mouseY, x, y) < d/2 ) {
    stroke(newStroke);
  } else {
    stroke(normalStroke);
  }
}

void hole(int x, int y, int w) {
  fill(grass);
  strokeWeight(5);
  stroke(darkBrown);
  circle(x, y, w);
}

void grass(int x, int y, int size) {
  //(x, y): top of line
  stroke(grass);
  strokeWeight(5);
  line(x, y, x, y + size);
}

void mole(int x, int y, int d) {
  noStroke();
  //face
  fill(darkBrown);
  circle(x, y, d);
  
  // left eye
  fill(0);
  circle(x - d/5, y - d/5, d/6);
  //right eye
  circle(x + d/5, y - d/5, d/6);
  
  //inner circle
  fill(lightBrown);
  circle(x, y + d/6, d/2);
  
  //nose
  fill(pink);
  circle(x, y + d/10, d/10);
  
  //mouth
  noFill();
  stroke(0);
  strokeWeight(3);
  arc(x, y + d/6, d/3, d/3, PI/6, 5 * PI/6);
  
  //top left whisker
  stroke(0);
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

void redReset() {
  redX = width/5;
  redY = height/2;
  redvx = 5;
  redvy = 5;
}

void blueReset() {
  blueX = 4 * width/5;
  blueY = height/2;
  bluevx = 5;
  bluevy = 5;
}

void controlSlider() {
  if (mouseX >= 300 && mouseX <= 700 && mouseY >= 575 && mouseY <= 625) {
    sliderX = mouseX;
  }
}
