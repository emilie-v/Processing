public class Pear extends Ball {

	public Pear () {
		super();
	}

	public Pear (int x, int y) {
		super(x, y);
	}

void draw() {
	fill (0, 255, 0);
	ellipse(position.x, position.y, size/3, size * 1.2);
	}	

}