Ball[]b=new Ball[100];

void setup() {
  size(2000, 2000);
  colorMode(RGB, 100);
  for (int i=0;i<b.length;i++) {
    b[i]= new Ball(width/2, height/2);
  }
}

void draw() {
  ;
  for (int i=0; i<b.length;i++) {
    b[i].update();
    b[i].display();
  }
}

class Ball {
  float x;
  float y;
  float dx;
  float dy;
  float r1;
  float r2;

  Ball(float _x, float _y) {
    x=_x;
    y=_y;
    dx=random(-5, 5);
    dy=random(-5, 5);
    r1=30;
    r2=40;
  }

  void update() {
    if (x>width-r1||x<r1) {
      dx*=-1;
    }
    if (y > height - r2 || y < r2) {
      dy*=-1;
    }

    x+=dx;
    y+=dy;
  }

  void display() {
    noStroke();
    fill(0, random(255), random(100));
    ellipse(x, y, r1 * map(mouseY, 0, height, 0, 2), r2 * map(mouseX, 0, width, 0, 2));
  }
}
