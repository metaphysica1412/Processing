float zoogX, zoogY;

float eyeR, eyeG, eyeB;

void setup() {
  size(200, 200);
  frameRate(30);
  zoogX = width / 2;
  zoogY = height + 100;
}

void draw() {
  background(255);
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  stroke(0);
  fill(175);
  rect(zoogX, zoogY, 20, 100);
  
  stroke(0);
  fill(255);
  ellipse(zoogX, zoogY-30, 60, 60);
  
  //Draw Zoog's eyes
  eyeR = random(255);
  eyeG = random(255);
  eyeB = random(255);
  fill(eyeR, eyeG, eyeB);
  ellipse(zoogX-19, zoogY-30, 16, 32);
  ellipse(zoogX+19, zoogY-30, 16, 32);
  
  // Draw Zoog's legs
  stroke(150);
  line(zoogX-10, zoogY+50, zoogX-10, height);
  line(zoogX+10, zoogY+50, zoogX+10, height);
  
  zoogY = zoogY - 1;
}
