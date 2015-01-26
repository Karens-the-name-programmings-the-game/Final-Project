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

    spousem1.append("Ginny Weasley");
    spousem1.append("Bellatrix Lestrange");
    spousem1.append("Cho Chang");
    spousem1.append("Fleur Delacour");
    spousem1.append("Petunia Dursley");

    spousef1.append("Harry Potter");
    spousef1.append("Lord Voldemort");
    spousef1.append("Ron Weasley");
    spousef1.append("Severus Snape");
    spousef1.append("Draco Malfoy");

    loc1.append("The Burrow");
    loc1.append("Malfoy Manor");
    loc1.append("Hogwarts");
    loc1.append("Gringotts");
    loc1.append("Knockturn Alley");

    car1.append("Nimbus 2000");
    car1.append("Flying Ford Anglia");
    car1.append("Firebolt");
    car1.append("Cleansweep 7");
    car1.append("Thestral");

    job1.append("Potions Teacher");
    job1.append("Death Eater");
    job1.append("Minister of Magic");
    job1.append("Dragon Trainer");
    job1.append("Quidditch Player");

    children1.append("0");
    children1.append("69");
    children1.append("One Million");
    children1.append("1000");
    children1.append("-20");

    pet1.append("Blast-Ended Skrewt");
    pet1.append("Hungarian Horntail");
    pet1.append("Unicorn");
    pet1.append("Owl");
    pet1.append("Acromantula");

    honeymoon1.append("Durmstrang");
    honeymoon1.append("Beauxbatons");
    honeymoon1.append("Shell Cottage");
    honeymoon1.append("Diagon Alley");
    honeymoon1.append("Godric's Hollow");

    home.append("Mansion");
    home.append("Apartment");
    home.append("Shack");
    home.append("House");
  }

  //class methods
  void getSpouse1() {
    if (gender == 1) {
      for (int i = 0; i< spousem1.size (); i++) {
        textSize(20); 
        text(spousem1.get(i), 20, 250 + i * 50);
      }
    }
    if (gender == 2) {
      for (int i = 0; i< spousef1.size (); i++) {
        textSize(20); 
        text(spousef1.get(i), 20, 250 + i * 50);
      }
    }
  }

  void crossSpouse1(int idx) {
    stroke(255);
    strokeWeight(5);
    line(15, 243 + idx*50, 180, 243 + idx * 50);
  }

  void getLoc1() {
    for (int i = 0; i< loc1.size (); i++) {
      textSize(20); 
      text(loc1.get(i), 220, 250 + i * 50);
    }
  }

  void crossLoc1(int idx) {
    strokeWeight(5);
    line(215, 243 + idx*50, 370, 243 + idx * 50);
  }

  void getCar1() {
    for (int i = 0; i< car1.size (); i++) {
      textSize(20); 
      text(car1.get(i), 400, 250 + i * 50);
    }
  }

  void crossCar1(int idx) {
    strokeWeight(5);
    line(395, 243 + idx*50, 530, 243 + idx * 50);
  }

  void getJob1() {
    for (int i = 0; i< job1.size (); i++) {
      textSize(20); 
      text(job1.get(i), 600, 250 + i * 50);
    }
  }

  void crossJob1(int idx) {
    strokeWeight(5);
    line(595, 243 + idx*50, 760, 243 + idx * 50);
  }

  void getChildren1() {
    for (int i = 0; i< children1.size (); i++) {
      textSize(20); 
      text(children1.get(i), 820, 250 + i * 50);
    }
  }

  void crossChildren1(int idx) {
    strokeWeight(5);
    line(815, 243 + idx*50, 930, 243 + idx * 50);
  }

  void getPet1() {
    for (int i = 0; i< pet1.size (); i++) {
      textSize(20); 
      text(pet1.get(i), 1040, 250 + i * 50);
    }
  }

  void crossPet1(int idx) {
    strokeWeight(5);
    line(1035, 243 + idx*50, 1130, 243 + idx * 50);
  }

  void getHoneymoon1() {
    for (int i = 0; i< honeymoon1.size (); i++) {
      textSize(20); 
      text(honeymoon1.get(i), 1240, 250 + i * 50);
    }
  }

  void crossHoneymoon1(int idx) {
    strokeWeight(5);
    line(1235, 243 + idx*50, 1400, 243 + idx * 50);
  }

  void getHome() {
    for (int i = 0; i< home.size (); i++) {
      textAlign(CENTER);
      textSize(50);
      text(home.get(i), width/2-400+ i*300, 100);
    }
  }

  void crossHome(int idx) {
    strokeWeight(5);
    line(width/2-500+ idx*300, 80, width/2-300+ idx*300, 80);
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

