public class GameObject {
	float x, y;
	float cellSize;

	boolean alive = false;
	boolean buffer = false;

	public GameObject (float x, float y, float cellSize) {

		this.x = x;
		this.y = y;
		this.cellSize = size;
	}

	void draw() {

		if (alive) {
			fill(255,105,180);
			rect(x, y, cellSize, cellSize);
		}
	}
}