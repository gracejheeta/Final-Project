// Final Project
// Whack A Mole

//mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//color variables
color cream = #F0E2B6;
color lightBrown = #C4A484;
color mediumBrown = #964B00;
color darkBrown = #5C4033;
color grass = #567D46;

void setup() {
  size(1000, 1000);
  mode = INTRO;
}

void draw() {
  if (mode == INTRO) {
    intro(); 
  } else if (mode == GAME) {
    game(); 
  } else if (mode == PAUSE) {
    pause(); 
  } else if (mode == GAMEOVER) {
    gameover(); 
  } else {
    println("Error: Mode = " + mode); 
  }
}
