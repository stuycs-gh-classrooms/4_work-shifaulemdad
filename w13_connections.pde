int[] xvals;
int[] yvals;
int numPoints;

void setup(){
  size(600, 400);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 0;
  stroke(random(255),random(255),random(255));
  makeLines(xvals, yvals, 100);
  drawLines(xvals, yvals, numPoints);
}

void makeLines(int[] xs, int[] ys, int points){
  for(int i = 0; i < points; i++){
    xs[i] = (int)random(width);
    ys[i] = (int)random(height);
  }
    numPoints = points;
}

void drawLines(int[] xs, int[] ys, int points){
  for(int i = 1; i < points; i++){
    line(xs[i-1], ys[i-1], xs[i], ys[i]);
  }
}
