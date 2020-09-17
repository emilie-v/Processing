PVector mousePosition = new PVector(0, 0);
PVector ellipsePosition = new PVector (0, 0);
PVector travelDirection = new PVector (0, 0);
float speed = 0.05;
float size = 10;
boolean traveling = false;

int value = 0;

void setup()
{
  size (640, 480);
  ellipsePosition.x = width / 2;
  ellipsePosition.y = height / 2;
  // rectMode(CENTER);
}

void draw() {
  background (95, 341, 232);
  stroke (152, 25, 194);
  strokeWeight (5);
  fill (value);
  ellipse(ellipsePosition.x, ellipsePosition.y, 12, 12);

  if (mousePressed)  {
    line (ellipsePosition.x, ellipsePosition.y, mouseX, mouseY);
  }

  if (traveling) {
  	ellipsePosition.add(travelDirection);
  }
   bounce ();
}

void bounce ()
{
	if (ellipsePosition.x <= 0 || ellipsePosition.x >= width) {
		travelDirection.x = travelDirection.x * -1;
	}
	if (ellipsePosition.y <= 0 || ellipsePosition.y >= height) {
		travelDirection.y = travelDirection.y * -1;
	}
}
void mouseReleased () {
  travelDirection = new PVector (mouseX - ellipsePosition.x, mouseY - ellipsePosition.y);
  travelDirection = travelDirection.mult(speed);
  traveling = true;
}

void mousePressed ()
{
  ellipsePosition.x = mouseX;
  ellipsePosition.y = mouseY;

  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}