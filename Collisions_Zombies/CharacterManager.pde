public class CharacterManager
{
 	void createCharacters()
 	{
 		for (int i = 0; i < characters.length; ++i) 
 		{
 			int characterSize = (int)random(20,31);

 			float xPosition = random(characterSize, width - characterSize);
 			float yPosition = random(characterSize, height - characterSize);
			float xVelocity = random(0,200) - 100;
			float yVelocity = random(0,200) - 100;

 			characters[i] = new Human(xPosition,yPosition,characterSize, xVelocity, yVelocity); 

 			if(i == characters.length -1) 
 			{
 				characters[i] = new Zombie(xPosition,yPosition,characterSize, xVelocity/2, yVelocity/2);
 			}
 		}
 	}

 	void moveCharacters()
 	{
 		for (int i = 0; i < characters.length; ++i)
 		{ 
 			characters[i].Update();

 			if(characters[i] instanceof Zombie) 
			{
				for (int j = 0; j < characters.length; ++j)
				{

					if(checkZombieCollision(characters[i], characters[j]) && characters[j] instanceof Human) 
					{
						float positionX = (int)characters[j].position.x; 
						float positionY = (int)characters[j].position.y;

						float velocityX = characters[j].velocity.x /2;
						float velocityY = characters[j].velocity.y /2;

						int charSize = characters[j].characterSize; 

						characters[j] = new Zombie(positionX,positionY,charSize,velocityX,velocityY); 

						humansAlive = checkForHumansAlive();

					}
				}
			}
 		}		
 	}

 	boolean checkZombieCollision (Character one, Character two)
	{	
		int maxDistance = one.characterSize/2 + two.characterSize/2; 

		if(abs(one.position.x - two.position.x) > maxDistance || abs(one.position.y - two.position.y) > maxDistance) 
		{
			return false;
		}

		else if(dist(one.position.x,one.position.y,two.position.x,two.position.y) > maxDistance)
		{
			return false; 
		}
		
		else 
		{
			return true;
		}
	}

	boolean checkForHumansAlive()
	{
		for (int i = 0; i < characters.length; ++i) 

		{
			if(characters[i] instanceof Human)
			{
				return true;
			}
		}
		return false;
	}


void killAllHumans() 
{
	for (int i = 0; i < characters.length; ++i) 
 		{
 				float positionX = characters[i].position.x; 
				float positionY = characters[i].position.y;

				float velocityX = characters[i].velocity.x /2;
				float velocityY = characters[i].velocity.y /2;

				int charSize = characters[i].characterSize; 

				characters[i] = new Zombie(positionX,positionY,charSize,velocityX,velocityY); 
 		}

 humansAlive = checkForHumansAlive ();
 
	}
 }



/*//Character character;
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
						/*}
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
}*/