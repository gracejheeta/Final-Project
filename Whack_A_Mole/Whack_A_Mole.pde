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
color red = #FF0000;
color yellow = #FEFF00;
color blue = #00C5FF;

//font variables
PFont mounth;

//key variables
boolean wkey, skey, akey, dkey, upkey, downkey, leftkey, rightkey;

//grass variables
int[] grassX;
int[] grassY;
int numGrass;

//hole variables
int[] holeX;
int[] holeY;
int holeD;
int numHoles;
int sliderX;

//mole variable
boolean alive[];

//paddle variables
int redX, redY, redD, redvx, redvy;
int blueX, blueY, blueD, bluevx, bluevy;

//game variables
int redScore, blueScore, targetScore;

void setup() {
  size(1000, 1000, P2D);
  textAlign(CENTER, CENTER);
  mounth = createFont("Mounth.ttf", 100);

  mode = INTRO;
  
  //initialize keyboard variables
  wkey = skey = akey = dkey = upkey = downkey = leftkey = rightkey = false;
  
  //initialize grass arrays
  numGrass = 3000;
  grassX = new int[numGrass];
  grassY = new int[numGrass];
  
  for (int i = 0; i < numGrass; i ++) {
    grassX[i] = int(random(50, 950));
    grassY[i] = int(random(50, 950));
  }
  
  //initialize hole variables
  sliderX = 500;
  holeD = 100;
  
  //initialize paddles
  redReset();
  redD = 50;
  blueReset();
  blueD = 50;
  
  //initialize game variables
  gameReset();
  targetScore = 1;
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
