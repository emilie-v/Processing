CharacterManager characterManager;
boolean gamOver = false;

void setup() {
	size (700, 600);
	////
}

void draw() {
	background(120, 20, 200);
	UpdateDeltaTime();

	characterManager.update();
	characterManager.draw();
}

//////////