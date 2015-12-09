class Button {
  int[] main = new int[5];
  int[] tempButton = new int[5];
  int[] back = new int[5];
  int[] recipe = new int[5];
  int[] recip = new int[5];

  int[] closeRec = new int[4];
  int[] recipButton = new int[4];

  Button() {

    main[0] = 300;  //width
    main[1] = 150;  //heigth
    main[2] = width/2-(main[0]/2);  //x position
    main[3] = height/2-(main[1]/2);  //y position
    main[4] = color(255, 0, 0);  //Color

    tempButton[0] = 100;
    tempButton[1] = 75;
    tempButton[2] = 700-(tempButton[0]/2);
    tempButton[3] = 100-(tempButton[1]/2);
    tempButton[4] = color(0, 255, 0);  

    recipe[0] = 100;
    recipe[1] = 75;
    recipe[2] = 500-(tempButton[0]/2);
    recipe[3] = 100-(tempButton[1]/2);
    recipe[4] = color(0, 255, 0);  

    back[0] = 100;
    back[1] = 75;
    back[2] = 100-(tempButton[0]/2);
    back[3] = 100-(tempButton[1]/2);
    back[4] = color(0, 255, 0);  //Color

    recip[0] =  824;  //width
    recip[1] = 568;  //heigth
    recip[2] = width/2-(recip[0]/2);  //x position
    recip[3] = height/2-(recip[1]/2);  //y position
    recip[4] = color(255, 0, 0);  //Color


    closeRec[0] = images.x1; //x
    closeRec[1] = images.y1; //y
    closeRec[2] = 50;//diameter
    closeRec[3] = color(150, 150, 0);//color

    recipButton[0] = 800; //x
    recipButton[1] = 50; //y
    recipButton[2] = 30;//diameter
    recipButton[3] = color(150, 150, 0);//color
  }

  void display(int[] button) {
    if (button.length == 5) { //if rectangle
      //rectangles
      strokeWeight(4);
      stroke(0);
      fill(button[4]);
      rect(button[2], button[3], button[0], button[1]);
      fill(0);
    }
    if (button.length == 4) { //if circle
      stroke(255);
      fill(button[3]);
      ellipse(button[0], button[1], button[2], button[2]);
    }
  }


  boolean mouseWithin(int[] button) {    
    if (button.length == 5) {
      return button[2] <= mouseX && mouseX <= button[2]+button[0] && button[3] <= mouseY && mouseY <= button[3]+button[1];
    }
    if (button.length == 4) {
      float closestX = constrain(mouseX, button[0], button[0]+button[2]);
      float closestY = constrain(mouseY, button[1], button[1]+button[2]);
      float distance = dist(mouseX, mouseY, closestX, closestY);
      return distance < (button[2]/2);
    } else return false;
  }
}