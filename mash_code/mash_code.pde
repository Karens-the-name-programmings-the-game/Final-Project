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
StringList temp = new StringList();
String item = "";
int n, p, v;

void setup() {
  size(displayWidth, displayHeight);
  screen = 0;
  gender = 0;
  p = 0;
  v = 0;
}

void draw() {
  category mycategory = new category();

  //intro screen
  screen = currentScreen();

  //predictions intro screen
  if (screen == 1) {
    background(0);
    textSize(80);
    fill(255);
    text("Can you predict your future?", width/2, height/2);
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
    background(255);

    if (gender == 1) {
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
      text("Choose your number!", swidth, sheight);
      fill(255);
      strokeWeight(1);
      rect(swidth+300, sheight-50, 100, 50);
      fill(0);
      textSize(40);
      text(typing, swidth+350, sheight-10);
      savedSpouse = typing;
    }

    if (gender == 2) {
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
      text("Choose your number!", swidth, sheight);
      fill(255);
      strokeWeight(1);
      rect(swidth+300, sheight-50, 100, 50);
      fill(0);
      textSize(40);
      text(typing, swidth+350, sheight-10);
      savedSpouse = typing;
    }
  }

  //location of residence
  if (screen == 3) {
    background(255);
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
    text("Choose your number!", swidth, sheight);
    fill(255);
    strokeWeight(1);
    rect(swidth+300, sheight-50, 100, 50);
    fill(0);
    textSize(40);
    text(typing, swidth+350, sheight-10);
    savedLoc = typing;
  }

  //type of car
  if (screen == 4) {
    background(255);
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
    text("Choose your number!", swidth, sheight);
    fill(255);
    strokeWeight(1);
    rect(swidth+300, sheight-50, 100, 50);
    fill(0);
    textSize(40);
    text(typing, swidth+350, sheight-10);
    savedCar = typing;
  }

  //job
  if (screen == 5) {
    background(255);
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
    text("Choose your number!", swidth, sheight);
    fill(255);
    strokeWeight(1);
    rect(swidth+300, sheight-50, 100, 50);
    fill(0);
    textSize(40);
    text(typing, swidth+350, sheight-10);
    savedJob = typing;
  }

  //number of children
  if (screen == 6) {
    background(255);
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
    text("Choose your number!", swidth, sheight);
    fill(255);
    strokeWeight(1);
    rect(swidth+300, sheight-50, 100, 50);
    fill(0);
    textSize(40);
    text(typing, swidth+350, sheight-10);
    savedChildren = typing;
  }

  //type of pet
  if (screen == 7) {
    background(255);
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
    text("Choose your number!", swidth, sheight);
    fill(255);
    strokeWeight(1);
    rect(swidth+300, sheight-50, 100, 50);
    fill(0);
    textSize(40);
    text(typing, swidth+350, sheight-10);
    savedPet = typing;
  }

  //honeymoon location
  if (screen == 8) {
    background(255);
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
    text("Choose your number!", swidth, sheight);
    fill(255);
    strokeWeight(1);
    rect(swidth+300, sheight-50, 100, 50);
    fill(0);
    textSize(40);
    text(typing, swidth+350, sheight-10);
    savedHoneymoon = typing;
  }

  //home
  if (screen ==9) {
    background(255);
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
    text("Choose your number!", swidth, sheight);
    fill(255);
    strokeWeight(1);
    rect(swidth+300, sheight-50, 100, 50);
    fill(0);
    textSize(40);
    text(typing, swidth+350, sheight-10);
    savedHome = typing;
  }

  //pick a number
  if (screen == 10) {
    background(255);
    fill(0);
    text("Pick a number between 1 and 15!", width/2, height/2-100);
    fill(255);
    rect(width/2-50, height/2, 100, 50);
    fill(0);
    textSize(40);
    text(typing, width/2, height/2+40);
    savedNumber = typing;
  }

  //MASH!
  if (screen == 11) {
    background(255);
    textAlign(LEFT);
    textSize(32); 
    text("Spouse", 60, 200); 
    text("Place", 270, 200); 
    text("Car", 460, 200); 
    text("Job", 620, 200); 
    text("Number of Children", 740, 200); 
    text("Pet", 1100, 200); 
    text("Honeymoon", 1200, 200);
    mycategory.getSpouse1();
    mycategory.getLoc1();
    mycategory.getCar1();
    mycategory.getJob1();
    mycategory.getChildren1();
    mycategory.getPet1();
    mycategory.getHoneymoon1();
    mycategory.getHome();

    //counting

    n = Integer.parseInt(savedNumber);
    temp = mycategory.createTemp(gender);
    v = temp.size();
    p=0;
    p=p+n;
    while (v>3) {
      item = temp.get(p);

      if (gender ==1) {
        if (mycategory.spousem1.hasValue(item) && mycategory.spousem1.size() > 1) {
          mycategory.removeItem(mycategory.spousem1, item);
          temp.remove(p);
          mycategory.crossSpouse1(p);
        } else if (mycategory.loc1.hasValue(item) && mycategory.loc1.size() > 1) {
          mycategory.removeItem(mycategory.loc1, item);
          temp.remove(p);
          mycategory.crossLoc1(p);
        } else if (mycategory.car1.hasValue(item) && mycategory.car1.size() > 1) {
          mycategory.removeItem(mycategory.car1, item);
          temp.remove(p);
          mycategory.crossCar1(p);
        } else if (mycategory.job1.hasValue(item) && mycategory.job1.size() > 1) {
          mycategory.removeItem(mycategory.job1, item);
          temp.remove(p);
          mycategory.crossJob1(p);
        } else if (mycategory.children1.hasValue(item) && mycategory.children1.size() > 1) {
          mycategory.removeItem(mycategory.children1, item);
          temp.remove(p);
          mycategory.crossChildren1(p);
        } else if (mycategory.pet1.hasValue(item) && mycategory.pet1.size() > 1) {
          mycategory.removeItem(mycategory.pet1, item);
          temp.remove(p);
          mycategory.crossPet1(p);
        } else if (mycategory.honeymoon1.hasValue(item) && mycategory.honeymoon1.size() > 1) {
          mycategory.removeItem(mycategory.honeymoon1, item);
          temp.remove(p);
          mycategory.crossHoneymoon1(p);
        } else if (mycategory.home.hasValue(item) && mycategory.home.size() > 1) {
          mycategory.removeItem(mycategory.home, item);
          temp.remove(p);
          mycategory.crossHome(p);
        }
        p=p+n;
        v = temp.size();
        if (p>=v) {
          p=p-v;
        }
      } else if ( gender == 2) {
        if (mycategory.spousef1.hasValue(item) && mycategory.spousef1.size() > 1) {
          mycategory.removeItem(mycategory.spousef1, item);
          temp.remove(p);
          mycategory.crossSpouse1(p);
        } else if (mycategory.loc1.hasValue(item) && mycategory.loc1.size() > 1) {
          mycategory.removeItem(mycategory.loc1, item);
          temp.remove(p);
          mycategory.crossLoc1(p);
        } else if (mycategory.car1.hasValue(item) && mycategory.car1.size() > 1) {
          mycategory.removeItem(mycategory.car1, item);
          temp.remove(p);
          mycategory.crossCar1(p);
        } else if (mycategory.job1.hasValue(item) && mycategory.job1.size() > 1) {
          mycategory.removeItem(mycategory.job1, item);
          temp.remove(p);
          mycategory.crossJob1(p);
        } else if (mycategory.children1.hasValue(item) && mycategory.children1.size() > 1) {
          mycategory.removeItem(mycategory.children1, item);
          temp.remove(p);
          mycategory.crossChildren1(p);
        } else if (mycategory.pet1.hasValue(item) && mycategory.pet1.size() > 1) {
          mycategory.removeItem(mycategory.pet1, item);
          temp.remove(p);
          mycategory.crossPet1(p);
        } else if (mycategory.honeymoon1.hasValue(item) && mycategory.honeymoon1.size() > 1) {
          mycategory.removeItem(mycategory.honeymoon1, item);
          temp.remove(p);
          mycategory.crossHoneymoon1(p);
        } else if (mycategory.home.hasValue(item) && mycategory.home.size() > 1) {
          mycategory.removeItem(mycategory.home, item);
          temp.remove(p);
          mycategory.crossHome(p);
        }
        p=p+n;
        v = temp.size();
        if (p>=v) {
          p=p-v;
        }
      }
    }
  }
}



int currentScreen() {
  if (screen == 0) {
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
        gender = 1;
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
        gender = 2;
        screen = 1;
      }
    }
  }
  return screen;
}


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
    }
  } else {
    typing = typing + key;
  }
}

