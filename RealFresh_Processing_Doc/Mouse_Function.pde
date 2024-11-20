int[] clickCounts = new int[6];

boolean isMouseOverImage(float x, float y) {

  return mouseX > x - 100 && mouseX < x + 100 && mouseY > y - 100 && mouseY < y + 100;
}

void mousePressed() {
  
  if (isMouseOverImage(200, 100)) {
    clickCounts[0]++;  
    println(clickCounts[0]);
  } else if (isMouseOverImage(200, 300)) {
    clickCounts[1]++;  
    println(clickCounts[1]);
  } else if (isMouseOverImage(200, 500)) {
    clickCounts[2]++; 
    println(clickCounts[2]);
  } else if (isMouseOverImage(800, 100)) {
    clickCounts[3]++; 
    println(clickCounts[3]);
  } else if (isMouseOverImage(800, 300)) {
    clickCounts[4]++;  
    println(clickCounts[4]);
  } else if (isMouseOverImage(800, 500)) {
    clickCounts[5]++;  
    println(clickCounts[5]);
  }
}
