public class GameObject {
	float x, y;
	float cellSize;

	public boolean alive = false;
	boolean buffer = false;

	public GameObject (float x, float y, float cellSize) {

		this.x = x;
		this.y = y;
		this.cellSize = cellSize;

		if(random(0, 100) < 15)
		{
			alive = true;
		}
	}

	void draw() {

		if (alive) {
			fill(240,105,180);
			rect(x, y, cellSize, cellSize);
		}
	}
}