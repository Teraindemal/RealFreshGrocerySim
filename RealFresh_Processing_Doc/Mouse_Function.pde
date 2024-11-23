//Initiaizing values
int selectedShelf;
int hoveredShelf;
//Checking if mouse is hovering on the product 
boolean isMouseOverImage(float x, float y) {
  return mouseX > x - 100 && mouseX < x + 100 && mouseY > y - 100 && mouseY < y + 100;
}
// checking which out of all the 6 products on the screen the mouse is over and than showing the details of that product
void hovered(){
  if (isMouseOverImage(200, 100)) {
    hoveredShelf = 0;
    isNutritionShowing = true;
  } 
  else if (isMouseOverImage(200, 300)) {
    hoveredShelf = 1;
    isNutritionShowing = true;
  } 
  else if (isMouseOverImage(200, 500)) {
    hoveredShelf = 2;
    isNutritionShowing = true;
  } 
  else if (isMouseOverImage(800, 100)) {
    hoveredShelf = 3;
    isNutritionShowing = true;
  } 
  else if (isMouseOverImage(800, 300)) {
    hoveredShelf = 4;
    isNutritionShowing = true;
  } 
  else if (isMouseOverImage(800, 500)) {
    hoveredShelf = 5;
    isNutritionShowing = true;
  }
  else{
    isNutritionShowing = false;
    hoveredShelf = 6;
  }
  
}


//checking if user has clicked on an item and which of the 6 products has been clicked on
void mousePressed() {  
  startTime = millis();
  if (isMouseOverImage(200, 100)) {
    selectedShelf = 0;
  } 
  else if (isMouseOverImage(200, 300)) {
    selectedShelf = 1;
  } 
  else if (isMouseOverImage(200, 500)) {
    selectedShelf = 2;
  } 
  else if (isMouseOverImage(800, 100)) {
    selectedShelf = 3;
  } 
  else if (isMouseOverImage(800, 300)) {
    selectedShelf = 4;
  } 
  else if (isMouseOverImage(800, 500)) {
    selectedShelf = 5;
  }
  else{
    selectedShelf = 6;
  }
  addProduct(); //calling the addProduct method 
}
