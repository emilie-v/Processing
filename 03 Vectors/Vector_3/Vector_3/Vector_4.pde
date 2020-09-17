PVector mousePosition = new PVector(0, 0);
PVector ellipsePosition = new PVector (0, 0);
PVector mouseDirection = new PVector (0, 0);
float speed = 0.07;
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

  mousePosition.add(mouseDirection);
  // ellipse(mouseX, mouseY, size, size); // ritar ut en ellipse på musens pos

  if (mousePressed)  {
    line (ellipsePosition.x, ellipsePosition.y, mouseX, mouseY);
    // line (mousePosition.x, mousePosition.y, mousePosition.x, mousePosition.y);
  }
  if (traveling) {
  	ellipsePosition.add(mouseDirection);

  }
  bounce ();
}

void bounce ()
{
	if (ellipsePosition.x <= 0 || mousePosition.x >= width) {
		mouseX = mouseX * -1;
	}
	if (ellipsePosition.y <= 0 || mousePosition.y >= width) {
		mouseY = mouseY * -1;
	}
}
void mouseReleased () {
  mouseDirection = new PVector (mouseX - ellipsePosition.x, mouseY - ellipsePosition.y).normalize();
  traveling = true;
  mouseDirection = ellipsePosition.sub(mousePosition);
  mouseDirection = mouseDirection.mult(speed);


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
