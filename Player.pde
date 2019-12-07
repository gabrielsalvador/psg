class Player extends Object {
  PVector velocity = new PVector(0, 0);

  Player(int x, int y) {
    super(x, y);
  }

  void render() {
    update();
    fill(#DE1414);
    ellipse(position.x, position.y, 20, 20);
  }

  void update() {
    position.add(velocity);
    doFX();
  }

  void doFX() {
    for(int i = 0 ; i < (int) velocity.magSq();i++ ){
       fx.add(new Particle(this.position));
    }
   
  }
}
