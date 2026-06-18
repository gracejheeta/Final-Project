void pause() {
  // play button
  game.pause();
  
  strokeWeight(5);
  tactileCircle(970, 30, 50, color(0), red, yellow);
  fill(color(0));
  stroke(color(0));
  triangle(960, 20, 960, 40, 980, 30);
}

void pauseClicks() {
  if ( dist(mouseX, mouseY, 970, 30) < 25) {
    mode = GAME; 
    game.play();
  }
}
