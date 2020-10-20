GameObject[][] cells;
float cellSize = 10;
int numberOfColumns = 5;
int numberOfRows = 5;
int spawnChancePercentage = 15;

void setup() {
  size(1000, 1000);
  ellipseMode(LEFT);
  frameRate(4);

  numberOfColumns = (int)Math.floor(width / cellSize);
  numberOfRows = (int)Math.floor(height / cellSize);

  cells = new GameObject[numberOfColumns][numberOfRows];

  for (int y = 0; y < numberOfRows; ++y) {

    for (int x = 0; x < numberOfColumns; ++x) {
 
      cells[x][y] = new GameObject(x * cellSize, y * cellSize, cellSize);

      if (random(0, 100) < spawnChancePercentage) {
        cells[x][y].alive = true;
      }
    }
  }
}

void draw() {

  for (int y = 0; y < numberOfRows; ++y) {
    for (int x = 0; x < numberOfColumns; ++x) {

      int neighbour = 0;

      boolean leftAlive = cells [x-1][y].alive;
      boolean rightAlive = cells [x+1][y].alive;

      boolean topAlive = cells [x][y-1].alive;
      boolean botAlive = cells [x][y+1].alive;

      boolean topLeftAlive = cells [x-1][y-1].alive;
      boolean topRightAlive = cells [x+1][y-1].alive;

      boolean botleftAlive = cells [x-1][y+1].alive;
      boolean botRightAlive = cells [x+1][y+1].alive;

      if (leftAlive == true)
      {
        neighbour += 1;
      }

      if (rightAlive == true)
      {
        neighbour += 1;
      }

      if (topAlive == true)
      {
        neighbour += 1;
      }

      if (botAlive == true)
      {
        neighbour += 1;
      }

      if (topLeftAlive == true)
      {
        neighbour += 1;
      }

      if (topRightAlive == true)
      {
        neighbour +1;
      }

      if (botleftAlive == true)
      {
        neighbour += 1;
      }

      if (botRightAlive = true)
      {
        neighbour += 1;
      }

        isAlive(neighbour, x, y);

    }
  }

  for (int x = 0; x < numberOfColumns; x++)
  {
    for (int y = 0; y < numberOfRows; y++)
    {
      cells[x][y].alive = cells[x][y].buffer;
    }
  }

  background (105, 105, 105);

  for (int x = 0; x < numberOfColumns; x++)
  {
    for (int y = 0; y < numberOfRows; y++)
    {
        cells[x][y].draw();
    }
  }
}

void isAlive (int neighbour, int x, int y)
{
  cells[x][y].buffer = cells[x][y].alive;

  if (neighbour >3)
  {
    cells[x][y].buffer = false;
  }

  if (neighbour ==3)
  {
    cells[x][y].buffer = true;
  }

}