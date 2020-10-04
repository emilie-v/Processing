Player player;

int numberofBalls = 10;
Ball [] balls;

float deltaTime;
float time;

void setup ()
{
  size(512, 512);
  ellipseMode(CENTER);

  start ();
}

void start ()
{
	player = new Player ();

	balls = new Ball [numberofBalls];

	for (int t = 0; i < balls.length; ++i) {
		balls [i] = new Ball();
	}
}

void draw () {
  clearBackground ();

  long currentTime = millis ();

  deltaTime = (currentTime - time);
  deltaTime *= 0.001f;
  // acceleration = input();
  // acceleration.mult(accelerationMultiplyer * speed * deltaTime);

  // if (acceleration.mag() == 0) {
  //   acceleration.x -= velocity.x * deaccerationMultiplyer * speed * deltaTime;
  //   acceleration.y -= velocity.y * deaccerationMultiplyer * speed * deltaTime;
  // }

  // velocity.add(acceleration);
  // velocity.limit(maxSpeed);

  // PVector move = velocity.copy();
  // move.mult(speed * deltaTime);
  // position.add(move);
  // ellipse(position.x, position.y, ballSize, ballSize);
  // time = currentTime;

  // if (position.x > width - ballSize / 2) {
  //   position.x = width - ballSize / 2;

  // }

  // else if (position.x < 0 + ballSize / 2) {
  //   position.x = 0 + ballSize / 2;
  // }

  //   if (position.y > height - ballSize / 2) {
  //   position.y = height - ballSize / 2;

  // }

  // else if (position.y < 0 + ballSize / 2) {
  //   position.y = 0 + ballSize / 2;
  // }
  for (int i = 0; i < numberofBalls; ++i) {

  	boolean hasCollided = roundCollision (player. position.x, 
  											player.position.y,
  											player.size/2, 

  											balls[i].position.x,
  											balls[i].position.y,
  											balls[i].size/2);
  	if (hasCollided) {
  		player.size = 0;
  		player.dead = true;
  	}

  	balls [i].update();
  }

  for (int i = 0; i < numberofBalls; ++i) {
  	balls[i].draw();
  }

  player.update(deltaTime);
  player.draw();

  if (player.dead) {
  	gameOver();
  }

  time = currentTime;
}

void clearBackground() {
	fill (255, 255, 255, 70);
	rect (0, 0, width, height);
}

void gameOver() 
{
	filter(GRAY);

	fill (0);
	textSize (32);
	textAlign (CENTER, CENTER);
	text ("GAME OVER", width / 2, height / 2);

	if (keyPressed) {
		if (key == 'r') {
			start ();
		}
	}
}
