ArrayList <MASH> category = new ArrayList <MASH>();
//int N = random(1, 15);
//int currentN;

void setup() {
  size(displayWidth, displayHeight);
}

void draw() {

  frameRate(10);

  //intro screen
  background(0);

  //title Welcome to MASH!
  fill(255);
  textSize(50);
  text("WELCOME TO", width/2-190, height/2-175);
  fill(random(255), random(255), random(255), random(255));
  textSize(200);
  text("M A S H", width/2-400, height/2+75);

  //pick your gender:

  //male button
  fill(255);
  rect(width/2-275, height/2+50, 175, 85);
  fill(0);
  textSize(60);
  text("male", width/2-250, height/2+100);

  if (mouseX > width/2-275 && mouseX < width/2-450 && mouseY > height/2+50 && mouseY < height/2+135) {
    if (mousePressed=true) {
      //code for takes you to next screen
    }

    //girl button
    fill(255);
    text("girl", width/2+105, height/2+50, 175, 85);
    rect(width/2+190, height/2+50, 175, 85);


    if (mouseX > width/2+190 && mouseX < width/2+265 && mouseY > height/2+50 && mouseY < height/2+135) {
      if (mousePressed=true) {
        //code for takes you to next screen
      }
    }
  }
  
  //counting
  
  //add items and categories
  category.add(new MASH());
  
//  for (int i = 0; i<=Mash.spousem1.length 
//  if (
}

