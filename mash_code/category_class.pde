class category {
  String[] spousef1 = {
    "Justin Bieber", "Marilyn Manson", "Barack Obama", "Kanye West", "Kim Jong Un"
  };
  String[] spousem1 = {
    "Miley Cyrus", "Whoopi Goldberg", "Oprah Winfrey", "Betty White", "Kristen Stewart"
  };
  
  String[] loc1 = {
    "North Korea", "Pluto", "South Dakota", "Magnet's Janitor's Closet", "Walden Pond"
  };
  
  String[] car1 = {
    "Station Wagon", "Unicycle", "Toyota Corolla", "Toyota Prius", "Honda Odyssey"
  };
  
  String[] job1 = {
    "McDonald's Worker", "Lumberjack", "Garbage Collector", "Grave Digger", "TSA Officer"
  };
  
  String[] children1 = {
    "0", "69", "One Million", "1000", "-20"
  };
  
  String[] pet1 = {
    "Alligator", "Baboon", "Cockroach", "Piranha", "Baby Tiger"
  };
  
  String[] honeymoon1 = {
    "Nowhere", "Your Backyard", "Bermuda Triangle", "Saudi Arabia", "Syria"
  };
  
  String[] home = {
    "M", "A", "S", "H"
  };

  //class constructor
  category() {
//    textSize(32); 
//    text("Spouse", 60, 200); 
//    text("Place", 270, 200); 
//    text("Car", 460, 200); 
//    text("Job", 620, 200); 
//    text("Number of Children", 740, 200); 
//    text("Pet", 1100, 200); 
//    text("Honeymoon", 1200, 200);
  }

  //class methods
  void spousef1() {
    for (int i = 0; i<= spousef1.length; i++) {
      textSize(20); 
      text(spousem1[i], 60, 230 + i*15);
    }
  }

  void spousem1() {
    for (int i = 0; i<= spousem1.length; i++) {
      textSize(20); 
      text(spousem1[i], 60, 230 + i*15);
    }
  }

//  void text () {
//    textSize(32); 
//    text("Spouse", 60, 200); 
//    text("Place", 270, 200); 
//    text("Car", 460, 200); 
//    text("Job", 620, 200); 
//    text("Number of Children", 740, 200); 
//    text("Pet", 1100, 200); 
//    text("Honeymoon", 1200, 200);
//  }
}

