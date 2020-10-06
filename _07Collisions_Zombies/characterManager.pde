Character character;
Character[] characters;
boolean gamePlaying = true;
int amountOfZombies = 1;
int numberOfCharacters = 100;
Zombie zombie;
Human human;

class characterManager {

	void setup() {
		characters = new Character[numberOfCharacters];
		character = new Character(random(10, width-10), random(10, height-10));
		zombie = new Zombie(random(10, width-10), random(10, height-10));
		human = new Human(random(10, width-10), random(10, height-10));

		for (int i = 0; < characters.length; ++i) {
			if (i <= 98) {
				characters[i] = (human = new Human (random(10, width-10), random(10, height-10)));
			}
			if (i==99) {
				characters[i] = (human = new Zombie (random(10, width-10), random(10, height-10)));
			}
		}
	}

void draw() {
	for (int i = 0; i < characters.length; ++i) {

		characters[i].update();
		if(characters[i] instanceof Zombie) {

			for (int j = 0; j < characters.length;) {
				if(roundCollision(characters[i], characters[j]) && characters[j] instanceof Human) {
					float x = characters[j].position.x;
					float y = characters[j].position.y;

					characters[j] = new Zombie(x, y);
					amountOfZombies++;
					if(amountOfZombies >= numberOfCharacters) {
						gamePlaying = false;
					}
				}
			}
		}
		characters[i].draw();
	}
}