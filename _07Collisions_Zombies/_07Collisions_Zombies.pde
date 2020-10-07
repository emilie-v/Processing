CharacterManager characterManager;
boolean gamOver = false;

void setup() {
	size (700, 600);
	frameRate (30);
	ellipseMode(CENTER);

	init();
}

void draw() {
	background(120, 20, 200);
	UpdateDeltaTime();

	characterManager.update();
	characterManager.draw();
}

void init() {
	zombies = new Zombies[amountOfZombies];
	humans = new Humans[amountOfHumans]; /// or is it Characters??

	game
}