class shapes{
void drawCircle(int x, int y) {
  stroke(0, 0, 255);
  strokeWeight(4);
  noFill();
  ellipse(x, y, 80, 80);
}

void drawCross(int x, int y) {
  stroke(255, 0, 0);
  strokeWeight(4);
  line(x-40, y-40, x+40, y+40);
  line(x+40, y-40, x-40, y+40);
 }
}
