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
color pink = #FFDEF3;

//grass variables
int[] grassX;
int[] grassY;
int numGrass;

//hole variables
int[] holeX;
int[] holeY;
int holeD;
int numHoles;

//mole variable
boolean alive[];

void setup() {
  size(1000, 1000);
  mode = INTRO;
  
  //initialize grass arrays
  numGrass = 200;
  
  grassX = new int[numGrass];
  grassY = new int[numGrass];
  
  for (int i = 0; i < numGrass; i ++) {
    grassX[i] = int(random(100, 900));
    grassY[i] = int(random(100, 900));
  }
  
  //initialize hole arrays
  numHoles = 10;
  holeD = 100;
  
  holeX = new int[numHoles];
  holeY = new int[numHoles];
  
  for (int i = 0; i < numHoles; i ++) {
    holeX[i] = int(random(100, 900));
    holeY[i] = int(random(100, 900));
  }
  checkForOverlaps();

  //initialize alive array
  alive = new boolean[numHoles];
  for (int i = 0; i < numHoles; i ++) {
    alive[i] = false;
  }
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
