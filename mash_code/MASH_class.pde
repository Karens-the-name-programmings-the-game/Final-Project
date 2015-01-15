class MASH {
  String[] spousem1 = {
    "Justin Bieber", "Marilyn Manson", "Barack Obama", "Kanye West", "Kim Jong Un"
  };
  String[] spousef1 = {
    "Miley Cyrus", "Whoopi Goldberg", "Oprah Winfrey", "Betty White", "Kristen Stewart";
  };

  //class constructor
  MASH() {

  }

  //class methods
  void spousem1() {
    for (int i = 0; i<= spousem1.length; i++) {
      textSize(20); 
      text(spousem1[i], 60, 230 + i*15);
    }
  }
  
  void spousef1() {
for (int i = 0; i<= spousem1.length; i++) {
      textSize(20); 
      text(spousem1[i], 60, 230 + i*15);
    }
  }
  
  void text () {
        textSize(32); 
    text("Spouse", 60, 200); 
    text("Place", 270, 200); 
    text("Car", 460, 200); 
    text("Job", 620, 200); 
    text("Number of Children", 740, 200); 
    text("Pet", 1100, 200); 
    text("Honeymoon", 1200, 200);
  }
