public class Character
{
	PVector position = new PVector();
	PVector velocity = new PVector();

	color skinColor;
	int characterSize = 20;

	void Update()
	{

		position.x += velocity.x * deltaTime; 
		position.y += velocity.y * deltaTime; 
 
		wrap(); 
		fill(skinColor); 
		ellipse(position.x, position.y, characterSize, characterSize); 
	}

	void wrap()
	{

		if(position.x >= width - (characterSize / 2)) 
		{
			position.x = characterSize;
		}


		if(position.x <= characterSize / 2)
		{
			position.x = width - characterSize;
		}

		if(position.y >= height - (characterSize / 2)) 
		{
			position.y = characterSize;
		}

		if(position.y <= characterSize / 2) 
		{
			position.y = height - characterSize;
		}
	}
}

/*class Character
	{
	PVector position;
	PVector velocity;
	int characterSize = 17;
	color ballColor;

	public Character ()
	{
		position = new PVector();

		position.x = random(0, width);
		position.y = random(0, height);

		velocity = new PVector();
		velocity.x = random(10) - 5;
		velocity.y = random(10) - 5;

		characterSize = (int)random(5, 25);

		ballColor = color(random(0, 256), random(0, 256), random(0, 256));
	}

	void moveCharacter()
	{
		position.x += velocity.x;
		position.y += velocity.y;

		if (position.x > width - characterSize / 2 || position.x < 0 + characterSize / 2) {
			velocity.x *= -1;
		}
		if (position.y > width - characterSize / 2 || position.y < 0 + characterSize / 2) {
			velocity.y *= -1; 
		}
	}

	void draw () 
	{
		fill (ballColor);
		ellipse (position.x, position.y, characterSize, characterSize);
	}

	}*/

	/*	class Character //should behave like ball class from previous lectures
		{

		PVector position;
		PVector velocity;
		int characterSize = 20;

	public Character (float x, float y) 
		{

		position = new PVector(x, y);
		velocity = new PVector();

		velocity.x = random (200, 600);
		velocity.y = random (200, 600);
	}

void update () {

	position.x += velocity.x * deltaTime;
	position.y += velocity.y * deltaTime;
	fill (125, 200, 255);
	ellipse(position.x, position.y, characterSize, characterSize);
	borders ();
}

void draw () {


}

 void borders() {

    if(position.x > width) {
      position.x = 0;
    }
    if(position.x < 0) {
      position.x = width;
    }
    if(position.y > height ) {
      position.y = 0;
    }
    if(position.y < 0) {
      position.y = height;
    }
  }


}*/