void mousePressed() {
  if (mode == INTRO) {
    introClicks(); 
  } else if (mode == GAME) {
    gameClicks(); 
  } else if (mode == PAUSE) {
    pauseClicks(); 
  } else if (mode == GAMEOVER) {
    gameoverClicks(); 
  }
}

void mouseDragged() {
  if (mode == INTRO) {
    introDrags(); 
  }
}
