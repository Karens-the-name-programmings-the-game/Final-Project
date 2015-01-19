class category {
//  String spousef1 = {
//    "Justin Bieber", "Marilyn Manson", "Barack Obama", "Kanye West", "Kim Jong Un"
//  };
//  String[] spousem1 = {
//    "Miley Cyrus", "Whoopi Goldberg", "Oprah Winfrey", "Betty White", "Kristen Stewart"
//  };
//
//  String[] loc1 = {
//    "North Korea", "Pluto", "South Dakota", "A Janitor's Closet", "Walden Pond"
//  };
//
//  String[] car1 = {
//    a
//  };
//
//  String[] job1 = {
//    "McDonald's Worker", "Lumberjack", "Garbage Collector", "Grave Digger", "TSA Officer"
//  };
//
//  String[] children1 = {
//    "0", "69", "One Million", "1000", "-20"
//  };
//
//  String[] pet1 = {
//    "Alligator", "Baboon", "Cockroach", "Piranha", "Baby Tiger"
//  };
//
//  String[] honeymoon1 = {
//    "Nowhere", "Your Backyard", "Bermuda Triangle", "Saudi Arabia", "Syria"
//  };
//
//  String[] home = {
//    "M", "A", "S", "H"
//  };

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
      for (int i = 0; i< spousem1.size(); i++) {
        textSize(20); 
        text(spousem1.get(i), 60, 250 + i * 50);
      }
    }
    if (gender == 2) {
      for (int i = 0; i< spousef1.size(); i++) {
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
    for (int i = 0; i< loc1.size(); i++) {
        textSize(20); 
        text(loc1.get(i), 270, 250 + i * 50);
      }
  }
  
  void crossLoc1(int idx) {
    strokeWeight(5);
    line(166, 243 + idx*50, 331, 243 + idx * 50);
  }
  
  void getCar1() {
    for (int i = 0; i< car1.size(); i++) {
        textSize(20); 
        text(car1.get(i), 460, 250 + i * 50);
      }
  }
  
  void getJob1() {
    for (int i = 0; i< job1.size(); i++) {
        textSize(20); 
        text(job1.get(i), 620, 250 + i * 50);
      }
  }
  
  void getChildren1() {
    for (int i = 0; i< children1.size(); i++) {
        textSize(20); 
        text(children1.get(i), 850, 250 + i * 50);
      }
  }
  
  void getPet1() {
    for (int i = 0; i< pet1.size(); i++) {
        textSize(20); 
        text(pet1.get(i), 1100, 250 + i * 50);
      }
  }
  
  void getHoneymoon1() {
    for (int i = 0; i< honeymoon1.size(); i++) {
        textSize(20); 
        text(honeymoon1.get(i), 1200, 250 + i * 50);
      }
  }
  
  void removeItem(StringList sl, int idx) {
    sl.remove(idx);
  }
}

