class Human extends Character {
	int r = int(random(140, 180));
	int g = int(random(60, 100));
	int b = int(random(25, 65));

	Human() {
		super();
		characterSize = int(random(15, 25));
	}
/*
	void draw() {

		super();*/
		/*push();
		translate(position.x, position.y);
		fill(r, g, b);
		ellipse(0, 0, characterSize, characterSize);
		pop();*/
	
}