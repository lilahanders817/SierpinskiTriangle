public void setup(){
  size(600, 350);
}
public void draw(){
  noStroke();
  background(0);
  fill(255,0,0);
  triangle(100, 335, 540, 335, 320, 25);
  fill(0);
  sierpinski(210, 180, 220);
}

double end = 30;
public void keyPressed() {
  if (key == 'x' && end > 1)
    end = end/2;
  if (key == 'z' && 500 > end)
    end = end*2;
}

public void sierpinski(float a, float b, float length) {
  triangle(a, b, a+length, b, a+(length/2), b +(length*sqrt(2)/2));
  if (length > end) {
    sierpinski(a-length/4, b+(length*sqrt(2)/4), length/2);
    sierpinski(a+3*length/4, b+(length*sqrt(2)/4), length/2);
    sierpinski(a+length/4, b-(length*sqrt(2)/4), length/2);
  }
}
