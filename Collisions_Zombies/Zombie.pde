public class Zombie extends Character{

	public Zombie (float xPosition, float yPosition, int characterSize, float xVelocity, float yVelocity) 
	{
		skinColor = zombieColor; 
		this.characterSize = characterSize;

		position = new PVector(xPosition, yPosition);
		velocity = new PVector(xVelocity, yVelocity);
	}

}

/*public class Zombie extends Character
{
	public Zombie () {
		super();
}*/
/*
void update ()
{
	super.update();
}

/*void lookingForHuman()
{
	Character[] characters = characterManager.characters;
	for (int i = 0; i < characters.length; i ++)
	{
		if (characters[i] instanceof Human)
		{
			if (foundHuman (characters[i]))
			{
				Zombie newZombie = new Zombie; 
				(characters[i].position.x, 
					characters[i]position.y, 
					characters[i]characterWidth,
					characters[i]characterHeight,
					color(0, random(120, 255),0);

					characters[i] = newZombie;
					characterManager.humanGotKilled();
			}
		}
	}
}*/