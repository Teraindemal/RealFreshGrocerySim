int currentPage = 0;  // 0 = Shopping, 1 = Checkout
//drawing checkout window 
void drawCheckoutPage() {
  background(255);  
  fill(0);
  textSize(24);
  textAlign(CENTER, TOP);
  text("Your Cart", width / 2, 20);

  float totalPrice = 0;
  int yOffset = 60;
  
  for (Product p : cart) { //showing the total price for all items in the cart 
    text(p.name + " - $" + p.price, width / 2, yOffset);
    totalPrice += p.price;
    yOffset += 30;
  }

  textSize(20);
  text("Total: $" + totalPrice, width / 2, yOffset + 10);
  yOffset += 40;

  text("Enter Your Budget: $" + budget, width / 2, yOffset);
  yOffset += 30;

}
