class gameManager {
	void start() {

		zombies[0] = new Zombies();
		for (int i = 0; i < humans.length; i++) {
			humans[i] = new Humans ();
		}
	}

	void update() {
		if (gameOver) { //where do i create this?
			return;
		}

		collisionManager.collsionCheck();

		for (int i = 0; i < humans.length; i++)

			if (zombies[i] != null) {
				zombies[i].update();
			}
	}
}

void draw() {
	for (int i = 0; i < humans.length; i++)
		if (humans[i] != null) {

			humans[i].draw();
		}

	for (int i = 0; i < zombies.length; i++)
		if (zombies[i] != null) {

			zombies[i].draw();
		}
}

void humanChanged() {
	humansRemain() //"converted" where do i put this

	if (humansRemain <= 0) {
		gameOver = true;
	}
}
