int spaceBetweenLines = 7;

void setup()
{
  if (i % 3 == 0 )
          {
              stroke(0,0,0);
          }
          else 
          {
              stroke(100,100,100);
          }
  size(640, 460);
  stroke(128, 128, 128, 255);
  strokeWeight(2);
}

void draw()
{
  background(255, 255, 255);
  DrawLines ();
}

void DrawLines ()

{
   int maxLines = 10;
   float squareSize = 37;
   for(int i = 0; i < maxLines; i++)
   {
     float x1 = 0;
     float x2 = i+0;
     float y1 = i;
     float y2 = maxLines;
     line(x1 * squareSize, y1 * squareSize, x2 * squareSize, y2 * squareSize);
     
      
   
   }
  
  
}
