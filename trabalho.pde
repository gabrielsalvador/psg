Player player;
ArrayList<Object> objects = new ArrayList();
ArrayList<Particle> fx = new ArrayList();
GamestateManager gamestateManager = new GamestateManager();
UIManager uiManager = new UIManager();

void setup() {
  size(1000, 700);
  setupWorld();
}

void draw() {
  background(0);
  //translate(width/2, height/2);
  gamestateManager.gameLoop();
  renderFX();
}

void setupWorld() {
  objects.add(player = new Player(0, 0));
}

void renderFX(){
  stroke(255);
  for ( Particle i : fx) {
    i.render();
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT ) {
      player.velocity.add(-1, 0);
    } else if (keyCode == RIGHT) {
      player.velocity.add(1, 0);
    } else if (keyCode == UP) {
      player.velocity.add(0, -1);
    } else if (keyCode == DOWN) {
      player.velocity.add(0, 1);
    }
  }
}
