PVector position = new PVector();
PVector velocity = new PVector();
PVector acceleration = new PVector();

float accelerationMultiplyer = 0.75;
float deaccerationMultiplyer = 0.15;
float speed = 60;
float maxSpeed = 12;
float ballSize = 25;

float deltaTime;
long time;

void setup ()
{
  size(640,480);
  position.x = width/2;
  position.y = height/2;
  ellipseMode(CENTER);
  frameRate (54);
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

  velocity.add(acceleration);
  velocity.limit(maxSpeed);

  PVector move = velocity.copy();
  move.mult(speed * deltaTime);
  position.add(move);
  ellipse(position.x, position.y, ballSize, ballSize);
  time = currentTime;

  if (position.x > width - ballSize / 2) {
    position.x = width - ballSize / 2;

  }

  else if (position.x < 0 + ballSize / 2) {
    position.x = 0 + ballSize / 2;
  }

    if (position.y > height - ballSize / 2) {
    position.y = height - ballSize / 2;

  }

  else if (position.y < 0 + ballSize / 2) {
    position.y = 0 + ballSize / 2;
  }

}
