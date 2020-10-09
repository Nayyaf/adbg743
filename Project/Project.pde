import processing.sound.*;
boolean start;
boolean yeet;
PImage move1; 
PImage move2;
PImage move3;
PImage tko;
SoundFile fight;
SoundFile dodge;
SoundFile punch;
SoundFile ko;


void setup() {
  size(500, 263);

  move1 = loadImage("move 1.jpeg");
  move2 = loadImage("move 2.jpeg");
  move3 = loadImage("move 3.jpeg");
  tko = loadImage("TKO.jpg");
  fight = new SoundFile(this, "Ready Fight.mp3");
  dodge = new SoundFile(this, "Dodge sound.mp3");
  punch = new SoundFile(this, "Punch.mp3");
  ko = new SoundFile(this, "TKO .mp3");
}

void draw() {


  size(500, 263);
  background(84, 209, 168);
  sounds();
  images();
}


void sounds()
{ 
  if ( frameCount == 20 ) {

    fight.play();
  }
  if ( frameCount == 110 ) {

    dodge.play();
  }
  if ( frameCount == 130) {

    punch.play();
  }
  if ( frameCount == 240) {

    ko.play();
  }
}
void images()
{ 
  if (  frameCount < 120) {
    image(move1, 183, 0, 134, 263);
  } else if ( frameCount >= 120 &&  frameCount < 180 ) {
    image(move2, 183, 0, 134, 263);
  } else if ( frameCount >= 180 &&  frameCount < 240) {
    image(move3, 183, 0, 134, 263);
  } else if ( frameCount >= 240 ) {
    image(tko, 0, 0, 500, 263);
  }
}
