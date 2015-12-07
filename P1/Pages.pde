class Pages {
  int[] main = new int[5];
  int[] recipe = new int[5];


  Pages() {

    main[0] = 300;  //width
    main[1] = 150;  //heigth
    main[2] = width/2-(main[0]/2);  //x position
    main[3] = height/2-(main[1]/2);  //y position
    main[4] = color(255, 0, 0);  //Color

    recipe[0] = 100;
    recipe[1] = 75;
    recipe[2] = 900-(recipe[0]/2);
    recipe[3] = 100-(recipe[1]/2);
    recipe[4] = color(0, 255, 0);  //Color
  }

  void display() {
    int diameter = 30;
    background(#B20202);
    textSize(36);
    strokeWeight(4);
    stroke(255);
    fill(#B20202);
    ellipse(450, 50, diameter, diameter);
    rect(main[2],main[3],main[0],main[1]);
    rect(recipe[2], recipe[3], recipe[0], recipe[1]);
    fill(255);
    text("Main Screen", main[2]+50, main[3]+50);
    textSize(16);
    fill(0);
    fill(127);
    ellipse(450, 50, diameter, diameter);
    textSize(16);
    fill(255);
    text("Setup", 430, 80);
  }

  boolean insideRect(int[] button) {    
    return button[2] <= mouseX && mouseX <= button[2]+button[0] && button[3] <= mouseY && mouseY <= button[3]+button[1];
  }
}