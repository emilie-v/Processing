class Ball 
	{
	PVector position;
	PVector velocity;
	int size 17;
	color ballColor;

	public Ball ()
	{
		position = new PVector();

		position.x = random(0, width);
		position.y = random(0, height);

		velocity = new PVector();
		velocity.x = random(10) - 5;
		velocity.y = random(10) - 5;

		size = (int)random(5, 25);

		ballColor = color(random(0, 256), random(0, 256), random(0, 256));
	}

	public Ball (int x, int y)
	{
		position = new PVector();

		velocity = new PVector();
		velocity.x = random(10) - 5;
		velocity.y = random(10) - 5;

		size = (int)random(5, 25);

		ballColor = color(random(0, 256), random(0, 256), random(0, 256));
	}

	void update()
	{
		position.x += velocity.x;
		position.y += velocity.y;

		if (position.x > width - size / 2 || position.x < 0 size / 2) {
			velocity.x *= -1;
		}
		if (position.y > width - size / 2 || position.y < 0 size / 2) {
			velocity.y *= -1;
	}

	void draw () 
	{
		fill (ballColor);
		ellipse (position.x, position.y, size, size);
	}

	}
}