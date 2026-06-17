void intro() {
  background(lightBrown);
  textSize(50);
  text("WHACK A MOLE!", width/2, height/2 - 100);
  
  text("Pick the number of holes!", width/2, height/2);
  //slider
  strokeWeight(5);
  stroke(mediumBrown);
  line(300, 600, 700, 600);
  fill(grass);
  circle(sliderX, 600, 50);
  fill(cream);
  textSize(40);
  numHoles = int(map(sliderX, 300, 700, 5, 15));
  text(numHoles, sliderX, 600);
  
}

void introClicks() {
  controlSlider();
}

void introDrags() {
  controlSlider();
}
