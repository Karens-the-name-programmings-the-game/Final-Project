class category {
  StringList spousem1 = new StringList();
  StringList spousef1 = new StringList();
  StringList loc1 = new StringList();
  StringList car1 = new StringList();
  StringList job1 = new StringList();
  StringList children1 = new StringList();
  StringList pet1 = new StringList();
  StringList honeymoon1 = new StringList();
  StringList home = new StringList();

  //class constructor
  category() {
    spousem1.append("Miley Cyrus");
    spousem1.append("Whoopi Goldberg");
    spousem1.append("Oprah Winfrey");
    spousem1.append("Betty White");
    spousem1.append("Kristen Stewart");

    spousef1.append("Justin Bieber");
    spousef1.append("Marilyn Manson");
    spousef1.append("Barack Obama");
    spousef1.append("Kanye West");
    spousef1.append("Kim Jong Un");

    loc1.append("North Korea");
    loc1.append("Pluto");
    loc1.append("South Dakota");
    loc1.append("A Janitor's Closet");
    loc1.append("Walden Pond");

    car1.append("Station Wagon");
    car1.append("Unicycle");
    car1.append("Toyota Corolla");
    car1.append("Toyota Prius");
    car1.append("Honda Odyssey");

    job1.append("McDonald's Worker");
    job1.append("Lumberjack");
    job1.append("Garbage Collector");
    job1.append("Grave Digger");
    job1.append("TSA Officer");

    children1.append("0");
    children1.append("69");
    children1.append("One Million");
    children1.append("1000");
    children1.append("-20");

    pet1.append("Alligator");
    pet1.append("Baboon");
    pet1.append("Cockroach");
    pet1.append("Piranha");
    pet1.append("Baby Tiger");

    honeymoon1.append("Nowhere");
    honeymoon1.append("Your Backyard");
    honeymoon1.append("Bermuda Triangle");
    honeymoon1.append("Saudi Arabia");
    honeymoon1.append("Syria");

    home.append("M");
    home.append("A");
    home.append("S");
    home.append("H");
  }

  //class methods
  void getSpouse1() {
    if (gender == 1) {
      for (int i = 0; i< spousem1.size (); i++) {
        textSize(20); 
        text(spousem1.get(i), 60, 250 + i * 50);
      }
    }
    if (gender == 2) {
      for (int i = 0; i< spousef1.size (); i++) {
        textSize(20); 
        text(spousef1.get(i), 60, 250 + i * 50);
      }
    }
  }

  void crossSpouse1(int idx) {
    strokeWeight(5);
    line(55, 243 + idx*50, 220, 243 + idx * 50);
  }

  void getLoc1() {
    for (int i = 0; i< loc1.size (); i++) {
      textSize(20); 
      text(loc1.get(i), 270, 250 + i * 50);
    }
  }

  void crossLoc1(int idx) {
    strokeWeight(5);
    line(265, 243 + idx*50, 420, 243 + idx * 50);
  }

  void getCar1() {
    for (int i = 0; i< car1.size (); i++) {
      textSize(20); 
      text(car1.get(i), 460, 250 + i * 50);
    }
  }

  void crossCar1(int idx) {
    strokeWeight(5);
    line(455, 243 + idx*50, 590, 243 + idx * 50);
  }

  void getJob1() {
    for (int i = 0; i< job1.size (); i++) {
      textSize(20); 
      text(job1.get(i), 620, 250 + i * 50);
    }
  }

  void crossJob1(int idx) {
    strokeWeight(5);
    line(615, 243 + idx*50, 780, 243 + idx * 50);
  }

  void getChildren1() {
    for (int i = 0; i< children1.size (); i++) {
      textSize(20); 
      text(children1.get(i), 850, 250 + i * 50);
    }
  }

  void crossChildren1(int idx) {
    strokeWeight(5);
    line(845, 243 + idx*50, 960, 243 + idx * 50);
  }

  void getPet1() {
    for (int i = 0; i< pet1.size (); i++) {
      textSize(20); 
      text(pet1.get(i), 1100, 250 + i * 50);
    }
  }

  void crossPet1(int idx) {
    strokeWeight(5);
    line(1095, 243 + idx*50, 1190, 243 + idx * 50);
  }

  void getHoneymoon1() {
    for (int i = 0; i< honeymoon1.size (); i++) {
      textSize(20); 
      text(honeymoon1.get(i), 1200, 250 + i * 50);
    }
  }

  void crossHoneymoon1(int idx) {
    strokeWeight(5);
    line(1195, 243 + idx*50, 1360, 243 + idx * 50);
  }

  void getHome() {
    for (int i = 0; i< home.size (); i++) {
      textSize(60);
      text(home.get(i), width/2-100+ i*100, 100);
    }
  }

  void crossHome(int idx) {
    strokeWeight(5);
    line(width/2-100+ idx*100, 80, width/2-50+ idx*100, 80);
  }


  void removeItem(StringList sl, String s) {
    int idx = -1;
    for (int i=0; i< sl.size (); i++) {
      if (sl.get(i) == s) {
        idx = 1;
      }
    }
    if (idx >= 0) {
      sl.remove(idx);
    }
  }

  StringList createTemp(int gender) {
    StringList temp = new StringList(); 
    if (gender ==1) {
      for (int i =0; i < spousem1.size (); i++) {
        temp.append(spousem1.get(i));
      }
    } else if (gender == 2) {
      for (int i =0; i < spousef1.size (); i++) {
        temp.append(spousef1.get(i));
      }
    }

    for (int i =0; i < loc1.size (); i++) {
      temp.append(loc1.get(i));
    }
    for (int i =0; i < car1.size (); i++) {
      temp.append(car1.get(i));
    }
    for (int i =0; i < job1.size (); i++) {
      temp.append(job1.get(i));
    }
    for (int i =0; i < children1.size (); i++) {
      temp.append(children1.get(i));
    }
    for (int i =0; i < pet1.size (); i++) {
      temp.append(pet1.get(i));
    }
    for (int i =0; i < honeymoon1.size (); i++) {
      temp.append(honeymoon1.get(i));
    }
    for (int i =0; i < home.size (); i++) {
      temp.append(home.get(i));
    }

    return temp;
  }
}

