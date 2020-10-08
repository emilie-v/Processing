CharacterManager characterManager;
boolean gamOver = false;

/*void settings() {

}*/

void setup() {
	size(1000, 800);
	println("hej"); 
	//frameRate (30);
	ellipseMode(CENTER);
	characterManager = new CharacterManager();
}

void draw() {
	background(120, 20, 200);
	UpdateDeltaTime();

	characterManager.move();
	//characterManager.draw();
}