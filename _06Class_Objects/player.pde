class Player {

	PVector position = new PVector();
	PVector velocity = new PVector();
	PVector acceleration = new PVector();

	float accelerationMultiplyer = 0.75;
	float deaccelerationMultiplyer = 0.15;
	float speed = 77;
	float maxSpeed = 7;

	float size = 17;
	boolean dead = false;

	public Player()
	{

		position.x = width / 2;
		position.y = height / 2;
	}

	void update (float deltaTime)
	{
		acceleration = input();
		acceleration.mult(accelerationMultiplyer * speed * deltaTime);

		if (acceleration.mag() == 0) {
			acceleration.x -= velocity.x * deaccelerationMultiplyer * speed * deltaTime;
		}

		velocity.add(acceleration);
		velocity.limit(maxSpeed);

		PVector move = velocity.copy();

		move.mult(speed * deltaTime);
		position.add(move);
	}

	void draw() {
		fill (200, 50, 50);
		ellipse(position.x, position.y, size, size);
	}
}