
void setup() {
 size(displayWidth, displayHeight); 
}

void draw() {
  
  //intro screen
   background(0);
  //title Welcome to MASH!
   fill(255);
  textSize(50);
  text("WELCOME TO", width/2-190, height/2-175);
  frameRate(10);
  fill(random(255), random(255), random(255), random(255));
  textSize(200);
  text("M A S H", width/2-400, height/2+75);
  //pick your gender:

  rect(width/2-275, height/2+50, 175, 85);
  rect(width/2+190, height/2+50, 175, 85);

}

