//note: because absolute coordinates were used in the code instead of relative coordinates, the positioning may be messed up if viewed in a different resolution. the original resolution is 1440 x 900.


ArrayList <category> MASH = new ArrayList <category>();
int screen, gender;
String typing = new String();
String saved = new String();
String savedSpouse = new String();
String savedLoc = new String();
String savedCar = new String();
String savedJob = new String();
String savedChildren = new String();
String savedPet = new String();
String savedHoneymoon = new String();
String savedHome = new String();
String savedNumber = new String();
String item = "";
String spouseName, locName, carName, jobName, childrenName, petName, honeymoonName, homeName;
int n, p, sn, matched;
int predictionSpouse, predictionLoc, predictionCar, predictionJob, predictionChildren, predictionPet, predictionHoneymoon, predictionHome;
PImage background0, background1, background2, background3, background4, background5, background6, background7, background8, background9, background10, background11, background12, background13;
int count = 500;
PVector[] loc = new PVector[count];
PVector[] v = new PVector[count];
PVector[] a = new PVector[count];
float[] rx = new float[count];
float[] ry = new float[count];

void setup() {
  size(displayWidth, displayHeight);
  screen = 0;
  gender = 0;
  p = 0;
  
  //initialize confetti
  for (int i = 0; i<count; i++) {
    rx[i] = random(2, 5);
    ry[i] = random(5, 10);
    loc[i] = new PVector(random(width), random(-height, -rx[i]/2));
    v[i] = new PVector(random(-3,3), random(5));
    a[i] = new PVector(0.1, 0.1);
  }
  
  //initialize backgrounds
  background0 = loadImage("background0.jpg");
  background1 = loadImage("background1.jpg");
  background2 = loadImage("background2.jpg");
  background3 = loadImage("background3.jpg");
  background4 = loadImage("background4.jpg");
  background5 = loadImage("background5.jpg");
  background6 = loadImage("background6.jpg");
  background7 = loadImage("background7.jpg");
  background8 = loadImage("background8.jpg");
  background9 = loadImage("background9.jpg");
  background10 = loadImage("background10.jpg");
  background11 = loadImage("background11.jpg");
  background12 = loadImage("background12.jpg");
  background13 = loadImage("background13.jpg");
}

void draw() {
  noStroke();
  
  category mycategory = new category();

  //intro screen
  screen = firstScreen();

  //predictions intro screen
  if (screen == 1) {
    background(0);
    image(background1, 0, 0, width, height);
    textSize(90);
    fill(30, 24, 255, 80);
    rectMode(CENTER);
    rect(width/2, 170, width, 150);
    rect(width/2, height-230, width, 150);
    fill(255);
    text("Can you predict your future?", width/2, 200);
    text("Press ENTER to find out!", width/2, height-200);
    if (keyPressed == true) {
      if (key == ENTER) {
        if (screen <= 2) {
          screen = 2;
        }
      }
    }
  }

  //prediction selection screens

  //spouse
  if (screen == 2) {
    background(0);
    image(background2, 0, 0, width, height);
    
    //male
    if (gender == 1) {
      textSize(40);
      fill(30, 24, 255, 80);
      rect(width/2, height/2-30, 600, 700);
      fill(255);
      text("SPOUSE", width/2, 150);
      strokeWeight(5);
      line(width/2-100, 160, width/2+100, 160);
      for (int i = 1; i< mycategory.spousem1.size ()+1; i++) {
        textAlign(LEFT);
        text(i + "." + " " + mycategory.spousem1.get(i-1), width/2-200, height/2-150+60*(i-1));
      }
      textAlign(CENTER);
      int swidth = width/2-70;
      int sheight = height/2+180;
      text("Choose your number, \n then press enter!", swidth, sheight);
      fill(30, 24, 255, 60);
      strokeWeight(1);
      rect(swidth+300, sheight+20, 100, 50);
      fill(255);
      text(typing, swidth+300, sheight+35);
      savedSpouse = typing;
      if (keyPressed) {
        if (key == BACKSPACE) {
          typing = "";
        }
      }
    }
    
    //female
    if (gender == 2) {
      textSize(40);
      background(0);
      image(background2, 0, 0, width, height);
      fill(30, 24, 255, 80);
      rect(width/2, height/2-30, 600, 700);
      fill(255);
      text("SPOUSE", width/2, 150);
      strokeWeight(5);
      line(width/2-100, 160, width/2+100, 160);
      for (int i = 1; i< mycategory.spousef1.size ()+1; i++) {
        textAlign(LEFT);
        text(i + "." + " " + mycategory.spousef1.get(i-1), width/2-200, height/2-150+60*(i-1));
      }
      textAlign(CENTER);
      int swidth = width/2-70;
      int sheight = height/2+180;
      text("Choose your number, \n then press enter!", swidth, sheight);
      fill(30, 24, 255, 60);
      strokeWeight(1);
      rect(swidth+300, sheight+20, 100, 50);
      fill(255);
      text(typing, swidth+300, sheight+35);
      savedSpouse = typing;
      if (keyPressed) {
        if (key == BACKSPACE) {
          typing = "";
        }
      }
    }
  }

  //location of residence
  if (screen == 3) {
    background(0);
    image(background3, 0, 0, width, height);
    fill(30, 24, 255, 60);
    rect(width/2, height/2-30, 600, 700);
    fill(255);
    text("PLACE", width/2, 150);
    strokeWeight(5);
    line(width/2-100, 160, width/2+100, 160);
    for (int i = 1; i< mycategory.loc1.size ()+1; i++) {
      textAlign(LEFT);
      text(i + "." + " " + mycategory.loc1.get(i-1), width/2-200, height/2-150+60*(i-1));
    }
    textAlign(CENTER);
    int swidth = width/2-70;
    int sheight = height/2+180;
    text("Choose your number, \n then press enter!", swidth, sheight);
    fill(30, 24, 255, 80);
    strokeWeight(1);
    rect(swidth+280, sheight+20, 100, 50);
    fill(255);
    textSize(40);
    text(typing, swidth+280, sheight+35);
    savedLoc = typing;
    if (keyPressed) {
      if (key == BACKSPACE) {
        typing = "";
      }
    }
  }

  //type of car
  if (screen == 4) {
    background(0);
    image(background4, 0, 0, width, height);
    fill(30, 24, 255, 100);
    rect(width/2, height/2-30, 600, 700);
    fill(255);
    text("TYPE OF CAR", width/2, 150);
    strokeWeight(5);
    line(width/2-150, 160, width/2+150, 160);
    for (int i = 1; i< mycategory.car1.size ()+1; i++) {
      textAlign(LEFT);
      text(i + "." + " " + mycategory.car1.get(i-1), width/2-200, height/2-150+60*(i-1));
    }
    textAlign(CENTER);
    int swidth = width/2-70;
    int sheight = height/2+180;
    text("Choose your number, \n then press enter!", swidth, sheight);
    fill(30, 24, 255, 120);
    strokeWeight(1);
    rect(swidth+270, sheight+20, 100, 50);
    fill(255);
    textSize(40);
    text(typing, swidth+270, sheight+35);
    savedCar = typing;
    if (keyPressed) {
      if (key == BACKSPACE) {
        typing = "";
      }
    }
  }

  //job
  if (screen == 5) {
    background(0);
    image(background5, 0, 0, width, height);
    fill(30, 24, 255, 100);
    rect(width/2, height/2-30, 600, 700);
    fill(255);
    text("JOB", width/2, 150);
    strokeWeight(5);
    line(width/2-70, 160, width/2+70, 160);
    for (int i = 1; i< mycategory.job1.size ()+1; i++) {
      textAlign(LEFT);
      text(i + "." + " " + mycategory.job1.get(i-1), width/2-200, height/2-150+60*(i-1));
    }
    textAlign(CENTER);
    int swidth = width/2-70;
    int sheight = height/2+180;
    text("Choose your number, \n then press enter!", swidth, sheight);
    fill(30, 24, 255, 120);
    strokeWeight(1);
    rect(swidth+270, sheight+25, 100, 50);
    fill(255);
    textSize(40);
    text(typing, swidth+270, sheight+40);
    savedJob = typing;
    if (keyPressed) {
      if (key == BACKSPACE) {
        typing = "";
      }
    }
  }

  //number of children
  if (screen == 6) {
    background(255);
    image(background6, 0, 0, width, height);
    fill(30, 24, 255, 100);
    rect(width/2, height/2-30, 600, 700);
    fill(255);
    text("NUMBER OF CHILDREN", width/2, 150);
    strokeWeight(5);
    line(width/2-250, 160, width/2+250, 160);
    for (int i = 1; i< mycategory.children1.size ()+1; i++) {
      textAlign(LEFT);
      text(i + "." + " " + mycategory.children1.get(i-1), width/2-200, height/2-150+60*(i-1));
    }
    textAlign(CENTER);
    int swidth = width/2-70;
    int sheight = height/2+180;
    text("Choose your number, \n then press enter!", swidth, sheight);
    fill(30, 24, 255, 120);
    strokeWeight(1);
    rect(swidth+280, sheight+25, 100, 50);
    fill(255);
    textSize(40);
    text(typing, swidth+280, sheight+40);
    savedChildren = typing;
    if (keyPressed) {
      if (key == BACKSPACE) {
        typing = "";
      }
    }
  }

  //type of pet
  if (screen == 7) {
    background(0);
    image(background7, 0, 0, width, height);
    fill(30, 24, 255, 100);
    rect(width/2, height/2-30, 600, 700);
    fill(255);
    text("PET", width/2, 150);
    strokeWeight(5);
    line(width/2-70, 160, width/2+70, 160);
    for (int i = 1; i< mycategory.pet1.size ()+1; i++) {
      textAlign(LEFT);
      text(i + "." + " " + mycategory.pet1.get(i-1), width/2-200, height/2-150+60*(i-1));
    }
    textAlign(CENTER);
    int swidth = width/2-70;
    int sheight = height/2+180;
    text("Choose your number, \n then press enter!", swidth, sheight);
    fill(30, 24, 255, 120);
    strokeWeight(1);
    rect(swidth+280, sheight+25, 100, 50);
    fill(255);
    textSize(40);
    text(typing, swidth+280, sheight+40);
    savedPet = typing;
    if (keyPressed) {
      if (key == BACKSPACE) {
        typing = "";
      }
    }
  }

  //honeymoon location
  if (screen == 8) {
    background(0);
    image(background8, 0, 0, width, height);
    fill(30, 24, 255, 100);
    rect(width/2, height/2-30, 600, 700);
    fill(255);
    text("HONEYMOON LOCATION", width/2, 150);
    strokeWeight(5);
    line(width/2-250, 160, width/2+250, 160);
    for (int i = 1; i< mycategory.honeymoon1.size ()+1; i++) {
      textAlign(LEFT);
      text(i + "." + " " + mycategory.honeymoon1.get(i-1), width/2-200, height/2-150+60*(i-1));
    }
    textAlign(CENTER);
    int swidth = width/2-70;
    int sheight = height/2+180;
    text("Choose your number, \n then press enter!", swidth, sheight);
    fill(30, 24, 255, 120);
    strokeWeight(1);
    rect(swidth+280, sheight+20, 100, 50);
    fill(255);
    textSize(40);
    text(typing, swidth+280, sheight+35);
    savedHoneymoon = typing;
    if (keyPressed) {
      if (key == BACKSPACE) {
        typing = "";
      }
    }
  }

  //home
  if (screen ==9) {
    background(0);
    image(background9, 0, 0, width, height);
    fill(30, 24, 255, 70);
    rect(width/2, height/2-30, 600, 700);
    fill(255);
    text("TYPE OF HOME", width/2, 150);
    strokeWeight(5);
    line(width/2-150, 160, width/2+150, 160);
    for (int i = 1; i< mycategory.home.size ()+1; i++) {
      textAlign(LEFT);
      text(i + "." + " " + mycategory.home.get(i-1), width/2-200, height/2-150+60*(i-1));
    }
    textAlign(CENTER);
    int swidth = width/2-70;
    int sheight = height/2+180;
    text("Choose your number, \n then press enter!", swidth, sheight);
    fill(30, 24, 255, 120);
    strokeWeight(1);
    rect(swidth+280, sheight+20, 100, 50);
    fill(255);
    textSize(40);
    text(typing, swidth+280, sheight+35);
    savedHome = typing;
    if (keyPressed) {
      if (key == BACKSPACE) {
        typing = "";
      }
    }
  }

  //pick a number
  if (screen == 10) {
    background(0);
    image(background10, 0, 0, width, height);
    fill(30, 24, 255, 100);
    rect(width/2, height/2-30, 900, 300);
    fill(255);
    text("Pick a number between 1 and 15!", width/2, height/2-100);
    fill(30, 24, 255, 120);
    rect(width/2-50, height/2, 100, 50);
    fill(255);
    textSize(40);
    text(typing, width/2-50, height/2+15);
    savedNumber = typing;
    if (keyPressed) {
      if (key == BACKSPACE) {
        typing = "";
      }
    }
  }

  //MASH!
  if (screen == 11) {
    background(255);
    image(background11, 0, 0, width, height);
    
    //display category titles
    textAlign(LEFT);
    textSize(32); 
    text("Spouse", 20, 200); 
    text("Place", 220, 200); 
    text("Car", 400, 200); 
    text("Job", 600, 200); 
    text("Number of Children", 720, 200); 
    text("Pet", 1080, 200); 
    text("Honeymoon", 1240, 200);
    mycategory.getSpouse1();
    mycategory.getLoc1();
    mycategory.getCar1();
    mycategory.getJob1();
    mycategory.getChildren1();
    mycategory.getPet1();
    mycategory.getHoneymoon1();
    mycategory.getHome();

    //counting

    sn = Integer.parseInt(savedNumber);
    p=0;

    //get the item from spouse category
    if (gender ==1) {
      spouseName = getSelectedItem(mycategory.spousem1, sn);
      for (int i=0; i< mycategory.spousem1.size (); i++) {
        if (mycategory.spousem1.get(i) != spouseName) {
          mycategory.crossSpouse1(i);
        }
      }
    } else if (gender == 2) {
      spouseName = getSelectedItem(mycategory.spousef1, sn);
      for (int i=0; i< mycategory.spousef1.size (); i++) {
        if (mycategory.spousef1.get(i) != spouseName) {
          mycategory.crossSpouse1(i);
        }
      }
    }

    //get the item from location category
    locName = getSelectedItem(mycategory.loc1, sn);
    for (int i=0; i< mycategory.loc1.size (); i++) {
      if (mycategory.loc1.get(i) != locName) {
        mycategory.crossLoc1(i);
      }
    }

    //get the item from car category
    carName = getSelectedItem(mycategory.car1, sn);
    for (int i=0; i< mycategory.car1.size (); i++) {
      if (mycategory.car1.get(i) != carName) {
        mycategory.crossCar1(i);
      }
    }

    //get the item from job category
    jobName = getSelectedItem(mycategory.job1, sn);
    for (int i=0; i< mycategory.job1.size (); i++) {
      if (mycategory.job1.get(i) != jobName) {
        mycategory.crossJob1(i);
      }
    }

    //get the item from children category
    childrenName = getSelectedItem(mycategory.children1, sn);
    for (int i=0; i< mycategory.children1.size (); i++) {
      if (mycategory.children1.get(i) != childrenName) {
        mycategory.crossChildren1(i);
      }
    }

    //get the item from pet category
    petName = getSelectedItem(mycategory.pet1, sn);
    for (int i=0; i< mycategory.pet1.size (); i++) {
      if (mycategory.pet1.get(i) != petName) {
        mycategory.crossPet1(i);
      }
    }

    //get the item from honeymoon category
    honeymoonName = getSelectedItem(mycategory.honeymoon1, sn);
    for (int i=0; i< mycategory.honeymoon1.size (); i++) {
      if (mycategory.honeymoon1.get(i) != honeymoonName) {
        mycategory.crossHoneymoon1(i);
      }
    }

    //get the item from home category
    homeName = getSelectedItem(mycategory.home, sn);
    for (int i=0; i< mycategory.home.size (); i++) {
      if (mycategory.home.get(i) != homeName) {
        mycategory.crossHome(i);
      }
    }

    textSize(60);
    textAlign(CENTER);
    text("Press enter to see your future!", width/2, height-200);
  }



  if (screen == 12) {
    background(255);

    //change saved strings into integers
    predictionSpouse = Integer.parseInt(savedSpouse);
    predictionLoc = Integer.parseInt(savedLoc);
    predictionCar = Integer.parseInt(savedCar);
    predictionJob = Integer.parseInt(savedJob);
    predictionChildren = Integer.parseInt(savedChildren);
    predictionPet = Integer.parseInt(savedPet);
    predictionHoneymoon = Integer.parseInt(savedHoneymoon);
    predictionHome = Integer.parseInt(savedHome);

    //match predictions with outcomes
    matched = 0;
    if (mycategory.spousem1.get(predictionSpouse) == spouseName) {
      matched = matched+1;
    }
    if (mycategory.loc1.get(predictionLoc) == locName) {
      matched = matched+1;
    }
    if (mycategory.car1.get(predictionCar) == carName) {
      matched = matched+1;
    }
    if (mycategory.job1.get(predictionJob) == jobName) {
      matched = matched+1;
    }
    if (mycategory.children1.get(predictionChildren) == childrenName) {
      matched = matched+1;
    }
    if (mycategory.pet1.get(predictionPet) == petName) {
      matched = matched+1;
    }
    if (mycategory.honeymoon1.get(predictionHoneymoon) == honeymoonName) {
      matched = matched+1;
    }
    if (mycategory.home.get(predictionHome) == homeName) {
      matched = matched+1;
    }

    if (matched >= 2) {
      background(0);
      image(background12, 0, 0, width, height);
      
      //confetti
      for (int i=0; i<count; i++) {
        v[i].add(a[i]);
        loc[i].add(v[i]);
        v[i].limit(10);
        fill(random(255), random(255), random(255));
        rect(loc[i].x, loc[i].y, rx[i], ry[i]);
        a[i].x = random(-.1, .1);
        if (loc[i].y - ry[i]/2 > height) {
          loc[i].set(random(width), random(-height, -ry[i]/2));
          v[i].set(0, 1);
        }
      }
      
      fill(30, 24, 255, 60);
      rect(width/2, height/2-20, 1070, 700);
      textSize(100);
      fill(255);
      text("You win!", width/2, 200);
    }
    if (matched < 2) {
      background(0);
      image(background13, 0, 0, width, height);
      fill(30, 24, 255, 60);
      rect(width/2, height/2-20, 1070, 700);
      textSize(100);
      fill(255);
      text("You lose!", width/2, 200);
    }
    textSize(40);
    text("Once upon a time, you met " + spouseName 
      + " \n and got married. You had your honeymoon \n in " 
      + honeymoonName + " and lived in a " + homeName 
      + " in \n" + locName + ". You eventually had " 
      + childrenName + " children \n with " + spouseName 
      + ". You drove around in a \n " + carName 
      + " and had a pet " + petName + ". \n You worked as a " 
      + jobName + "\n for the rest of your life.", width/2, height/2-130);
    
    //restart the game
    fill(30, 24, 255, 60);
    rect(width-100, 35, 150, 50);
    fill(255);
    text("REPLAY", width-100, 50);
    if (mousePressed) {
      if (mouseX < width-25 && mouseX > width-175 && mouseY < 60 && mouseY > 10) {
        screen = 0;
      }
    }
    
    //exit the game
    fill(30, 24, 255, 60);
    rect(width-100, 90, 150, 50);
    fill(255);
    text("EXIT", width-100, 105);
    if (mousePressed) {
      if (mouseX < width-25 && mouseX > width-175 && mouseY < 115 && mouseY > 65) {
        exit();
      }
    }
  }
}



int firstScreen() {
  if (screen == 0) {
    frameRate(10);
    background(0);
    image(background0, 0, 0, width, height);

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
    rectMode(CORNER);
    fill(57, 194, 255, 170);
    rect(width/2-340, height/2+120, 200, 85, 7);
    fill(255);
    textSize(50);
    text("male", width/2-240, height/2+182);

    //move on to next screen
    if (mousePressed) {
      if (mouseX > width/2-340 && mouseX < width/2-140 && mouseY > height/2+120 && mouseY < height/2+205) {
        gender = 1;
        screen = 1;
      }
    }

    //female button
    fill(57, 194, 255, 170);
    //    noStroke();
    rect(width/2+140, height/2+120, 200, 85, 7);
    fill(255);
    textAlign(CENTER);
    textSize(50);
    text("female", width/2+240, height/2+182);
    
    //move on to next screen
    if (mousePressed) {
      if (mouseX > width/2+140 && mouseX < width/2+340 && mouseY > height/2+120 && mouseY < height/2+205) {
        gender = 2;
        screen = 1;
      }
    }
  }
  return screen;
}

//pick item to cross off
String getSelectedItem(StringList sl, int sn) {
  int r = int(random(0, sl.size()));
  int n = 0;
  if (sn < sl.size()) {
    n = r%(sn + sl.size());
  } else {
    n = r%sn;
  }
  return sl.get(n);
}

//use enter to move to next screen
void keyPressed() {
  if (key == ENTER) {
    saved = typing;
    typing = "";
    if (screen == 2) {
      screen = 3;
    } else if (screen == 3) {
      screen = 4;
    } else if (screen == 4) {
      screen = 5;
    } else if (screen == 5) {
      screen = 6;
    } else if (screen == 6) {
      screen = 7;
    } else if (screen == 7) {
      screen = 8;
    } else if (screen == 8) {
      screen = 9;
    } else if (screen ==9) {
      screen = 10;
    } else if (screen == 10) {
      screen = 11;
    } else if (screen == 11) {
      screen = 12;
    }
  } else {
    typing = typing + key;
  }
}

