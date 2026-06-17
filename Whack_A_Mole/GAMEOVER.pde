void gameover() {
  textSize(50);
  fill(255);
  
  if (redScore == 15) {
    background(red);
    text("RED WINS!", width/2, height/2 -  100);
    text(redScore + " - " + blueScore, width/2, height/2);
  } else {
    background(blue);
    text("BLUE WINS!", width/2, height/2 -  100);
    text(blueScore + " - " + redScore, width/2, height/2);
  }
}

void gameoverClicks() {
  
}
