ArrayList <MASH> category = new ArrayList <MASH>();
int screen;
//int N = random(1, 15);
//int currentN;

void setup() {
  size(displayWidth, displayHeight);
  screen = 0;
}

void draw() {

  if (screen == 0) {
    //intro screen
    frameRate(10);
    background(0);

    //title Welcome to MASH!
    fill(255);
    textAlign(CENTER);
    textSize(50);
    text("WELCOME TO", width/2, height/2-125);
    fill(random(255), random(255), random(255), random(255));
    textSize(200);
    text("M A S H", width/2, height/2+75);

    //pick your gender: 

    //male button
    fill(255);
    rect(width/2-340, height/2+120, 200, 85);
    fill(0);
    textSize(50);
    text("male", width/2-240, height/2+182);

    if (mousePressed) {
      if (mouseX > width/2-340 && mouseX < width/2-140 && mouseY > height/2+120 && mouseY < height/2+205) {
        screen = 1;
      }
    }

    //female button
    fill(255);
    rect(width/2+140, height/2+120, 200, 85);
    fill(0);
    textAlign(CENTER);
    textSize(50);
    text("female", width/2+240, height/2+182);


    if (mousePressed) {
      if (mouseX > width/2+140 && mouseX < width/2+340 && mouseY > height/2+120 && mouseY < height/2+205) {
        screen = 1;
      }
    }
  }

  if (screen == 1) {
    background(255);
    textAlign(LEFT);
    //counting

    //add items and categories
    category.add(new MASH());

    //  for (int i = 0; i<=Mash.spousem1.length 
    //  if (
  }
}

