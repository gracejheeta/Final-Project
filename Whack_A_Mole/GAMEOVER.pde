void gameover() {
  game.pause();
  intro.rewind();
  gameover.play();
  
  textSize(150);
  fill(255);
  strokeWeight(15);
  
  if (redScore == targetScore) {
    background(red);
    text("RED WINS!", 500, 300);
    text(redScore + " - " + blueScore, 500, 500);
  } else {
    background(blue);
    text("BLUE WINS!", 500, 300);
    text(blueScore + " - " + redScore, 500, 500);
  }
  
  //restart button
  tactileRect(150, 700, 300, 150, cream, yellow, grass);
  fill(cream);
  textSize(65);
  text("Restart", 300, 775);
    
  //exit button
  tactileRect(550, 700, 300, 150, cream, yellow, grass);
  fill(cream);
  text("Exit", 700, 775);
}

void gameoverClicks() {
  //click on restart
  if (mouseX > 150 && mouseX < 450 && mouseY > 700 && mouseY < 850) {
    mode = INTRO;
    redReset();
    blueReset();
    gameReset();
  }
  if (mouseX > 550 && mouseX < 850 && mouseY > 700 && mouseY < 850) exit();
}
