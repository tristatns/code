int x1;
int y1;
int x2;
int y2;
int i;
int e;
int size = 50;
boolean buttonClicked1;
boolean buttonClicked2;
float dist;

void setup() {
  size(500, 500);
  x1=100;
  y1=100;
  x2= 400;
  y2= 400;
}

void draw() {
  noStroke();
  background(0);  
  println("button one "+calcDist(x1, y1));
  println("button two "+calcDist(x2, y2));
  println("boolean one "+buttonClicked1);
  println("boolean one "+buttonClicked2);
  println("distance "+ dist);

  if (buttonClicked1) {
    for (int i = 0; i< 500; i+= 25) {
      for (int e = 0; e< 500; e+= 25) {
        fill(map(i, mouseX, width, 0, 255), map(e, mouseY, height, 0, 255), random(255));
        rect(i, e, size, size);
      }
    }
  } else {
    background(255);
  }

  if (buttonClicked2) {
    for (int i = 0; i<= 500; i+= 25) {
      for (int e = 0; e<= 500; e+= 25) {
        fill(map(i, mouseX, width, 0, 255), map(e, mouseY, height, 0, 255), random(255));
        ellipse(i, e, 25, 25);
      }
    }
  } else {
    background(255);
  }

  //button one shape
  fill(155);
  ellipse(x1, y1, size, size);
  //button two shape
  fill(155);
  ellipse(x2, y2, size, size);

  if (calcDist(x1, y1)< size/2) {
    fill(0, 200, 200);
  } else {
    fill(156, 34, 78);
    ellipse(x1, y1, size, size);
  }
  if (calcDist(x2, y2)< size/2) {
    fill(0, 200, 200);
  } else {
    fill(156, 34, 78);
    ellipse(x2, y2, size, size);
  }
}
void mousePressed() {
  if (calcDist(x1, y1) <=size) {
    buttonClicked1 =!buttonClicked1;
  }
  if (calcDist(x2, y2) <=size) {
    buttonClicked2 =!buttonClicked2;
  }
}
float calcDist(int xPos, int yPos) {
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
}