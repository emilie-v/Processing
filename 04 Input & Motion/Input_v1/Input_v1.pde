boolean moveLeft;
boolean moveRight;
boolean moveUp;
boolean moveDown;

PVector inputVector = new PVector();
float x = 0;

void setup ()
{
	size (640, 480);
	x = width/2;
	ellipseMode(CENTER);
}

void draw() {
	background (70, 10, 100);
	if (moveLeft) {
		x -=7;
	}
	if (moveRight) {
		x +=7;
	}
	ellipse(x, height / 2, 15, 25);
}

void keyPressed()
{
	if (keyCode == LEFT || key == 'a')
		moveLeft = true;

	else if (keyCode == RIGHT || key == 'd')
		moveRight = true;

	if (keyCode == UP || 'w')
		moveUp true;

	else if (keyCode == DOWN || key == 's')
		moveDown true;
}
PVector input()
{






}