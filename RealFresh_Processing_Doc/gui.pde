/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:468071:
  appc.background(230);
} //_CODE_:window1:468071:

public void calorieBenchmarkChanged(GCustomSlider source, GEvent event) { //_CODE_:calorieBenchmarkSlider:402263:
  calorieBenchmark = calorieBenchmarkSlider.getValueI();
} //_CODE_:calorieBenchmarkSlider:402263:

public void custom_slider1_change1(GCustomSlider source, GEvent event) { //_CODE_:Sodium:246557:
  sodiumBenchmark = Sodium.getValueI();
} //_CODE_:Sodium:246557:

public void custom_slider2_change1(GCustomSlider source, GEvent event) { //_CODE_:Sugar:550252:
  sugarBenchmark = Sugar.getValueI();
} //_CODE_:Sugar:550252:

public void custom_slider3_change1(GCustomSlider source, GEvent event) { //_CODE_:Protein:922490:
  proteinBenchmark = Protein.getValueI();
} //_CODE_:Protein:922490:

public void custom_slider4_change1(GCustomSlider source, GEvent event) { //_CODE_:Carbs:624475:
  carbsBenchmark = Carbs.getValueI();
} //_CODE_:Carbs:624475:

public void custom_slider5_change1(GCustomSlider source, GEvent event) { //_CODE_:Fat:352962:
 fatBenchmark = Fat.getValueI();
} //_CODE_:Fat:352962:

public void refreshfilterclicked(GButton source, GEvent event) { //_CODE_:button1:837442:
  listAllProducts();
} //_CODE_:button1:837442:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 480, 480, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  calorieBenchmarkSlider = new GCustomSlider(window1, 32, 144, 157, 63, "grey_blue");
  calorieBenchmarkSlider.setShowValue(true);
  calorieBenchmarkSlider.setShowLimits(true);
  calorieBenchmarkSlider.setLimits(400, 0, 500);
  calorieBenchmarkSlider.setNbrTicks(11);
  calorieBenchmarkSlider.setNumberFormat(G4P.INTEGER, 0);
  calorieBenchmarkSlider.setOpaque(false);
  calorieBenchmarkSlider.addEventHandler(this, "calorieBenchmarkChanged");
  Sodium = new GCustomSlider(window1, 271, 43, 162, 40, "grey_blue");
  Sodium.setShowValue(true);
  Sodium.setShowLimits(true);
  Sodium.setLimits(800, 0, 800);
  Sodium.setNumberFormat(G4P.INTEGER, 0);
  Sodium.setOpaque(false);
  Sodium.addEventHandler(this, "custom_slider1_change1");
  Sugar = new GCustomSlider(window1, 271, 98, 163, 43, "grey_blue");
  Sugar.setShowValue(true);
  Sugar.setShowLimits(true);
  Sugar.setLimits(20, 0, 20);
  Sugar.setNumberFormat(G4P.INTEGER, 0);
  Sugar.setOpaque(false);
  Sugar.addEventHandler(this, "custom_slider2_change1");
  Protein = new GCustomSlider(window1, 271, 157, 164, 51, "grey_blue");
  Protein.setShowValue(true);
  Protein.setShowLimits(true);
  Protein.setLimits(0, 0, 25);
  Protein.setNumberFormat(G4P.INTEGER, 0);
  Protein.setOpaque(false);
  Protein.addEventHandler(this, "custom_slider3_change1");
  Carbs = new GCustomSlider(window1, 273, 224, 163, 49, "grey_blue");
  Carbs.setShowValue(true);
  Carbs.setShowLimits(true);
  Carbs.setLimits(100, 0, 100);
  Carbs.setNumberFormat(G4P.INTEGER, 0);
  Carbs.setOpaque(false);
  Carbs.addEventHandler(this, "custom_slider4_change1");
  Fat = new GCustomSlider(window1, 270, 286, 167, 59, "grey_blue");
  Fat.setShowValue(true);
  Fat.setShowLimits(true);
  Fat.setLimits(10, 0, 10);
  Fat.setNumberFormat(G4P.INTEGER, 0);
  Fat.setOpaque(false);
  Fat.addEventHandler(this, "custom_slider5_change1");
  label1 = new GLabel(window1, 61, 114, 93, 38);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Calories (Max)");
  label1.setOpaque(false);
  label2 = new GLabel(window1, 295, 26, 113, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("mg Sodium (Max)");
  label2.setOpaque(false);
  label3 = new GLabel(window1, 300, 83, 95, 20);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("g Sugar (Max)");
  label3.setOpaque(false);
  label4 = new GLabel(window1, 291, 144, 116, 20);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("g Protein (Min)");
  label4.setOpaque(false);
  label5 = new GLabel(window1, 300, 210, 93, 20);
  label5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label5.setText("g Carbs (Max)");
  label5.setOpaque(false);
  label6 = new GLabel(window1, 312, 279, 80, 20);
  label6.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label6.setText("g Fats (Max)");
  label6.setOpaque(false);
  button1 = new GButton(window1, 47, 246, 124, 63);
  button1.setText("Refresh Filter");
  button1.addEventHandler(this, "refreshfilterclicked");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GCustomSlider calorieBenchmarkSlider; 
GCustomSlider Sodium; 
GCustomSlider Sugar; 
GCustomSlider Protein; 
GCustomSlider Carbs; 
GCustomSlider Fat; 
GLabel label1; 
GLabel label2; 
GLabel label3; 
GLabel label4; 
GLabel label5; 
GLabel label6; 
GButton button1; 
