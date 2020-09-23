PVector position = new PVector();
PVector velocity = new PVector();
PVector acceleration = new PVector();

float accelerationMultiplyer = 0.75;
float deaccerationMultiplyer = 0.15;
float speed = 60;
float maxSpeed = 8;

float deltaTime;
long time;

void setup ()
{
	size (640, 480);
	position.x = width/2;
	position.y = height/2;
	frameRate (54);
	ellipseMode(CENTER);
}

void draw () {
	background (70, 10, 100);

	long currentTime = millis ();
	deltaTime = (currentTime - time);
	deltaTime *= 0.001f;
	acceleration = input();
	acceleration.mult(accelerationMultiplyer * speed * deltaTime);

	if (acceleration.mag() == 0) {
		acceleration.x -= velocity.x * deaccerationMultiplyer * speed * deltaTime;
		acceleration.y -= velocity.y * deaccerationMultiplyer * speed * deltaTime;

	}
}