class Achivements {
  int[] achievement;
  int xrow = 4;
  int yrow = 8;
  Achivements() {
    achievement = new int[xrow*yrow]; //Test which achievements are unlocked
    for (int i = 0; i<xrow*yrow; i++) {
      achievement[i] = 0;
    }
  }

  void display() {
    //rectangle position TO BE DELETED
    for (int i = 0; i < yrow; i++ ) {
      for (int j = 0; j < xrow; j++) {
        stroke(0);
        fill(255, 0, 0);
        rect(109+150*j, 180+102*i, 100, 75);
      }
    }
    for (int i = 0; i < yrow; i++ ) {
      for (int j = 0; j < xrow; j++) {
        image(achievementImage[4*i+j+1], 109+150*j, 180+102*i);
      }
    }
    achievement[3] = 1;
    achievement[6] = 1;
    unlocked(achievement); //Inserting array
  }


  void unlocked(int[] array) { //LOCKED ACHIEVEMENTS
    for (int i = 0; i < yrow; i++ ) {
      for (int j = 0; j < xrow; j++) {
        if (array[4*i+j] == 0)
          image(achievementImage[0], 109+150*j, 180+102*i);
      }
    }
  }
}