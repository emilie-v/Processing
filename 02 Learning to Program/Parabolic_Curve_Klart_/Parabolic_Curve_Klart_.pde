int spaceBetweenLines = 7;

void setup()
{

  size(640, 460);
 
}

void draw()
{
  background(255, 255, 255);
  DrawLines ();
}

void DrawLines ()

{
   int maxLines = 150;
   float squareSize = 37;
   
  for (int j = 0 ; j < height; j = j+ spaceBetweenLines)
  {
    strokeWeight(2);

    if (j % 3 == 0)
    {
      stroke(0);
    } 
    else 
    {
      stroke(150);
    }

    line(10, j, j, 500);
  }
   }
