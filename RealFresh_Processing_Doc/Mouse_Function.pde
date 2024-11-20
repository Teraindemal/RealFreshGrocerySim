int selectedShelf;

boolean isMouseOverImage(float x, float y) {
  return mouseX > x - 100 && mouseX < x + 100 && mouseY > y - 100 && mouseY < y + 100;
}



void mousePressed() {  
  if (isMouseOverImage(200, 100)) {
    selectedShelf = 0;
  } else if (isMouseOverImage(200, 300)) {
    selectedShelf = 1;
  } else if (isMouseOverImage(200, 500)) {
    selectedShelf = 2;
  } else if (isMouseOverImage(800, 100)) {
    selectedShelf = 3;
  } else if (isMouseOverImage(800, 300)) {
    selectedShelf = 4;
  } else if (isMouseOverImage(800, 500)) {
    selectedShelf = 5;
  }
  cart.add(shelf[selectedShelf]);
  listCart();
}
