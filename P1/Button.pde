class Button {
  int[] initialStart = new int[5];
  int[] recipeButton = new int[5];
  int[] back = new int[5];
  int[] back2 = new int[5];
  int[] popupButton = new int[5];
  int[] recipeBox = new int[5];
  int[] startGameButton = new int[5];
  int[] achievementButton = new int[5];
  int[] cookingTechniques = new int[5];
  int[] ingredientsInfo = new int[5];

  int[] closePopup = new int[4];
  int[] yellowOverlay = new int[4];

  Button() {

    initialStart[0] = 300;  //width
    initialStart[1] = 150;  //heigth
    initialStart[2] = width/2-(initialStart[0]/2);  //x position
    initialStart[3] = height/2-(initialStart[1]/2);  //y position
    initialStart[4] = color(255, 0, 0);  //Color

    recipeButton[0] = 100;
    recipeButton[1] = 75;
    recipeButton[2] = 700-(recipeButton[0]/2);
    recipeButton[3] = 100-(recipeButton[1]/2);
    recipeButton[4] = color(0, 255, 0);  

    achievementButton[0] = 100;
    achievementButton[1] = 75;
    achievementButton[2] = 600-(recipeButton[0]/2);
    achievementButton[3] = 100-(recipeButton[1]/2);
    achievementButton[4] = color(0, 255, 0);  
    
    popupButton[0] = 100;
    popupButton[1] = 75;
    popupButton[2] = 500-(recipeButton[0]/2);
    popupButton[3] = 100-(recipeButton[1]/2);
    popupButton[4] = color(0, 255, 0);  

    back[0] = 100;
    back[1] = 75;
    back[2] = 100-(recipeButton[0]/2);
    back[3] = 100-(recipeButton[1]/2);
    back[4] = color(0, 255, 0);  //Color
    
    back2[0] = 100;
    back2[1] = 75;
    back2[2] = 100-(recipeButton[0]/2);
    back2[3] = 100-(recipeButton[1]/2);
    back2[4] = color(0, 255, 0);  //Color

    recipeBox[0] = 568;  //width
    recipeBox[1] = 824;  //heigth
    recipeBox[2] = width/2-(recipeBox[0]/2);  //x position
    recipeBox[3] = height/2-(recipeBox[1]/2);  //y position
    recipeBox[4] = color(255, 0, 0);  //Color

    startGameButton[0] = 300; //width
    startGameButton[1] = 75; //height
    startGameButton[2] = width/2-(startGameButton[0]/2); //x position
    startGameButton[3] = height/2+200-(startGameButton[1]/2); //y position
    startGameButton[4] = color(200, 200, 0); //color

    closePopup[0] = images.x1; //x
    closePopup[1] = images.y1; //y
    closePopup[2] = 50;//diameter
    closePopup[3] = color(150, 150, 0);//color

    yellowOverlay[0] = 800; //x
    yellowOverlay[1] = 50; //y
    yellowOverlay[2] = 30;//diameter
    yellowOverlay[3] = color(150, 150, 0);//color
    
    cookingTechniques[0] = 300; //width
    cookingTechniques[1] = 75; //height
    cookingTechniques[2] = width/2-(cookingTechniques[0]/2); //x position
    cookingTechniques[3] = height/2+100-(cookingTechniques[1]/2); //y position
    cookingTechniques[4] = color(0, 200, 0); //color
    
    ingredientsInfo[0] = 300; //width
    ingredientsInfo[1] = 75; //height
    ingredientsInfo[2] = width/2-(ingredientsInfo[0]/2); //x position
    ingredientsInfo[3] = height/2+200-(ingredientsInfo[1]/2); //y position
    ingredientsInfo[4] = color(0, 200, 0); //color
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
      return button[2] <= mouseX && mouseX <= button[2]+button[0] && button[3] 
        <= mouseY && mouseY <= button[3]+button[1];
    }
    if (button.length == 4) {
      float closestX = constrain(mouseX, button[0], button[0]+button[2]);
      float closestY = constrain(mouseY, button[1], button[1]+button[2]);
      float distance = dist(mouseX, mouseY, closestX, closestY);
      return distance < (button[2]/2);
    } else return false;
  }
}