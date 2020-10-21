long currentTime;

PFont font;

boolean humansAlive = true;
float gameOverTime = 0;

color backgroundColor = color(100, 100, 100);
color humanColor = color(255,0,0);
color zombieColor = color(0,255,0);


CharacterManager characterManager;
Character[] characters;
int maxNumberOfCharacters = 100;

void setup() 
{
	size(1200,1000); 
	ellipseMode(CENTER);

	CreateReferences(); 

	characterManager.createCharacters();
}

void CreateReferences()
{
	characters = new Character[maxNumberOfCharacters];
	characterManager = new CharacterManager();
}

void draw() 
{

	background(backgroundColor);

	if(!humansAlive)
	{

		if(gameOverTime == 0)
		{	
			
			gameOverTime = millis() * 0.001f;
		}

		displayGameOver();
	}

	UpdateGame();

}

void UpdateGame()
{
	characterManager.moveCharacters();
	
	CalculateDeltaTime(); 
}

void CalculateDeltaTime()
{

	currentTime = millis(); 
	deltaTime = (currentTime - time) * 0.001f;
	time = currentTime;
}


void displayGameOver()
{
	font = createFont("Metropolis.ttf", 64);
	textAlign(CENTER);
	textFont (font);
	fill(255,0,0);
	text("Game Over", width/2, height/2);


	fill(0,0,255);
	//textSize(64);
	text("Time until all humans were zombies: " + nf(gameOverTime,0,1) + " s", width/2, height/2 + 30);
}

void killAllHumans() 
{
	characterManager.killAllHumans();
}

void restart()
{
	characterManager.createCharacters();

	humansAlive = true;
}


/*CharacterManager characterManager;
boolean gamOver = false;

/*void settings() {

}*/

/*void setup() {
	size(1000, 800);
	println("hej"); 
	//frameRate (30);
	ellipseMode(CENTER);
	characterManager = new CharacterManager();
}

void draw() {
	background(120, 20, 200);
	UpdateDeltaTime();

	characterManager.move();*/
	//characterManager.draw();
//}