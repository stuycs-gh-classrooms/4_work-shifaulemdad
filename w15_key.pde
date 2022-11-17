int[] xvals;
int[] yvals;
int MAX_POINTS = 100000;
int numPoints;

void setup() {
  size(600, 400);
  xvals = new int[MAX_POINTS];
  yvals = new int[MAX_POINTS];
  numPoints = 0;
}//setup

void drawLines(int[] xs, int[] ys) {
  stroke(255);
  strokeWeight(4);
  for (int i=1; i < numPoints; i++) {
    line(xs[i-1], ys[i-1], xs[i], ys[i]);
  }//for
}//drawLines

void mouseClicked() {
  xvals[numPoints] = mouseX;
  yvals[numPoints] = mouseY;
  numPoints++;
}//mouseClicked

void mouseDragged() {
  xvals[numPoints] = mouseX;
  yvals[numPoints] = mouseY;
  numPoints++;
}//mouseDragged

void draw() {
  background(0);
  drawLines(xvals, yvals);
}//draw

void moveLines(int[] xs, int[] ys, int xMod, int yMod) {
  if (xMod == 1) {
    for (int i = 0; i < numPoints; i++) {
      xs[i] += xMod;
    }
  } else if (xMod == -1) {
    for (int i = 0; i < numPoints; i++) {
      xs[i] += xMod;
    }
  } else if (yMod == 1) {
    for (int i = 0; i < numPoints; i++) {
      ys[i] += yMod;
    }
  } else if (yMod == -1) {
    for (int i = 0; i < numPoints; i++) {
      ys[i] += yMod;
    }
  }
}//moveLines

void keyPressed() {
  if (key == 'c') {
    background(0);
    numPoints = 0;
  }
  if (key == CODED) {
    if (keyCode == UP) {
      moveLines(xvals, yvals, 0, -1);
    } else if (keyCode == DOWN) {
      moveLines(xvals, yvals, 0, 1);
    } else if (keyCode == RIGHT) {
      moveLines(xvals, yvals, -1, 0);
    } else if (keyCode == LEFT) {
      moveLines(xvals, yvals, 1, 0);
    }
  }
}//keyPressed
