class Apple extends Ball {
	Apple () {

		super();
		size = 12;
		ballColor = color(random(128, 256), random (0, 128), 0);
	}

void draw () {

	push ();
	translate(position.x, position.y);
	fill (ballColor);
	ellipse (0,0, 17, 7);
	fill (0);
	line (0, -4, 5, -8);
	pop ();
	}
}