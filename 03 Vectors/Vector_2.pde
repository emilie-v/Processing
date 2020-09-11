PVector mousePosition = new PVector(0,0);
PVector ellipsePosition = new PVector (0,0);

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

  if (mousePressed) 
  {
  	line (ellipsePosition.x, ellipsePosition.y, mousePosition.x, mousePosition.y);
  	// line (mousePosition.x, mousePosition.y, mousePosition.x, mousePosition.y);

  }
  }
  
  void mousePressed ()
  {
    mousePosition.x = mouseX; 
    mousePosition.y = mouseY;
    ellipsePosition.x = mousePosition.x;
    ellipsePosition.y = mousePosition.y;
    
   if (value == 0) {
     value = 255;
   } else {
     value = 0;
   }
  }
