//Character character;
Character[] characters;
boolean gamePlaying = true;
int amountOfZombies = 1;
int numberOfCharacters = 100;

class CharacterManager {

	public CharacterManager() {
		characters = new Character[numberOfCharacters];
		//character = new Character(random(10, width-10), random(10, height-10));

		for (int i = 0; i < characters.length; ++i) {
			if (i < characters.length -1) {
				characters[i] = new Human();
			}
			else  {
				characters[i] = new Zombie();
			}
		}
	}

	void move() {
		for (int i = 0; i < characters.length; ++i) {

			characters[i].moveCharacter();
			if(characters[i] instanceof Zombie) {

				for (int j = 0; j < characters.length;) {
					if(roundCollision(characters[i], characters[j]) && characters[j] instanceof Human) {
						float x = characters[j].position.x;
						float y = characters[j].position.y;

						characters[j] = new Zombie();
						amountOfZombies++;
						if(amountOfZombies >= numberOfCharacters) {
							/*gamePlaying = false;*/
						}
					}
				}
			}
		characters[i].draw();
		}
	}

	boolean roundCollision (Character char1, Character char2) {
		
		int  maxDistance = char1.characterSize/2 + char2.characterSize/2;
		if(abs(char1.position.x - char2.position.x) > maxDistance || abs(char1.position.y - char2.position.y) > maxDistance) 
			{return false;}

		else if (dist(char1.position.x, char1.position.y, char2.position.x, char2.position.y) > maxDistance) 
			{return false;}

		return true;
	}
}