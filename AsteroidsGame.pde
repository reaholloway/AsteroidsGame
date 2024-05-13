Spaceship silly = new Spaceship();
int starNum = 300;
Star[] giggle = new Star[starNum];

public void setup() {
  size(500, 500);
  for (int i = 0; i < starNum; i++) {
    giggle[i] = new Star();
  }
}

public void draw() {
  background(0);
  for (int i = 0; i < starNum; i++) {
    giggle[i].show();
  }
  silly.show();
  silly.move();
}

public void keyPressed() {
  if (keyCode == UP) {
    silly.accelerate(1);
  } else if (keyCode == RIGHT) {
    silly.turn(10);
  } else if (keyCode == LEFT) {
    silly.turn(-10);
  } else if (keyCode == ' ') {
    silly.hyperspace();
  }
}
