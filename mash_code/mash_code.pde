
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
  
    //boy
    text("boy", width/2-300, height/2+200, 175, 85);
    fill(255);
    rect(width/2-275, height/2+50, 175, 85);
    
    if(mouseX > width/2-275 && mouseX < width/2-450 && mouseY > height/2+50 && mouseY < height/2+135) {
      if(mousePressed=true){
        //code for takes you to next screen
      }
   
    //girl
    rect(width/2+190, height/2+50, 175, 85);
    
    if(mouseX > width/2+190 && mouseX < width/2+265 && mouseY > height/2+50 && mouseY < height/2+135) {
      if(mousePressed=true){
        //code for takes you to next screen
      }

}

