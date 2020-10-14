GameObject[][] cells;
float cellSize = 10;
int numberOfColums;
int numberOfRows;
int spawnChancePercentage = 15;

void setup() {
  size(512, 512);
  ellipseMode(LEFT);
  frameRate(4);

  numberOfColums = (int)Math.floor(width / cellSize);
  numberOfRows = (int)Math.floor(height / cellSize);

  cells = new GameObject[numberOfColums][numberOfRows];

  for (int y = 0; y < numberOfRows; ++y) {

    for (int x = 0; x < numberOfColums; ++x) {
 
      cells[x][y] = new GameObject(x * cellSize, y * cellSize, cellSize);

      if (random(0, 100) < spawnChancePercentage) {
        cells[x][y].alive = true;
      }
    }
  }
}

void draw() {

  for (int y = 0; y < numberOfRows; ++y) {
    for (int x = 0; x < numberOfColums; ++x) {

      cells[x][y].draw();
    }
  }
}