PVector mousePosition = new PVector(0, 0);
PVector ellipsePosition = new PVector (0, 0);
PVector mouseDirection = new PVector (0, 0);
float speed = 0.5;
float size = 15;

int value = 0;

void setup()

{
  size (640, 480);
  ellipsePosition.x = width / 2;
  ellipsePosition.y = height / 2;
  // rectMode(CENTER);
}

void draw() {
  background (255, 255, 255);
  stroke (200, 25, 50);
  strokeWeight (2);
  fill (value);
  ellipse(ellipsePosition.x, ellipsePosition.y, 12, 12);

  mousePosition.add(mouseDirection);
  // ellipse(mouseX, mouseY, size, size); // Ritar ut ellipse på muspositionen

  if (mousePressed)  {
    line (ellipsePosition.x, ellipsePosition.y, mouseX, mouseY);
    // line (mousePosition.x, mousePosition.y, mousePosition.x, mousePosition.y);
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
void mouseReleased ()
{
  print ("hey");

  mouseDirection = new PVector (mouseX - ellipsePosition.x, mouseY - ellipsePosition.y).normalize();
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

//Lägg till värdena fr mouseDirection till ellipsePosition