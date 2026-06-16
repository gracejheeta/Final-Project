void hole(int x, int y, int w) {
  fill(grass);
  strokeWeight(10);
  stroke(darkBrown);
  circle(x, y, w);
}

void grass(int x, int y, int size) {
  fill(grass);
  noStroke();
}
