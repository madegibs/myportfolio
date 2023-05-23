// Maddie Gibson | April 6, 2023 | Timeline

void setup() {
  size(950, 400);
}

void draw() {
  background(#A8C6B4);
  drawRef();
  histEvent(50, 300, "1900", false, "Max Planck's discovery of quantisation \n lays foundation for quantum mechanics.");
  histEvent(154,200,"1924", true, "Wave-particle duality experiment shows that electrons \n and photons behave like waves.");
  histEvent(258,300, "1925", false, "Heisenberg uncertainty principle states it is impossible to measure \n certain physical properties with arbitrary precision.");
  histEvent(362, 200, "1927", true, "Niels Bohr and Albert Einstein debate over \n the foundations of quantum mechanics.");
  histEvent(466,300, "1935", false, "Schrodinger makes his famous 'Schrodinger's Cat' paradox.");
  histEvent(570,200, "1963", true, "John Bell's EPR paradox helps establish the non-local nature \n of quantum mechanics.");
  histEvent(674,300, "1982", false, "Richard Feynman proposes idea of first quantum computer \n (it is later made in 1998).");
  histEvent(778, 200, "2016", true, "First observation of gravity waves.");
}

void drawRef() {
  textAlign(CENTER);
  textSize(25);
  fill(0);
  text("History of Quantum Physics", width/2, 60);
  textSize(20);
  text("by Maddie Gibson", width/2, 80);
  strokeWeight(3);
  line(60, 250, 890, 250);
  strokeWeight(2);
  line(59, 240, 59, 260);
  line(891, 240, 891, 260);
  text("1900", 60, 235);
  text("2020",890,235);
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  if (top == true) {
    line(x, y, x-10, y+50);
  } else {
    line(x,y,x+10,y-50);
  }
  rectMode(CENTER);
  fill(250);
  strokeWeight(2);
  rect(x, y, 100, 30, 7);
  fill(0);
  text(title, x, y+5);
  if(mouseX>x-50 && mouseX<x+50 && mouseY>y-15 && mouseY<y+15) {
    if(top) {
     text(detail,width/2,125);
    } else {
    text(detail,width/2,350);
    }
 
  }
}
