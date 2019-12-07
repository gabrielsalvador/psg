

class Particle {

  PVector position, velocity;

  Particle(PVector position) {
    this.position = position.copy();
    velocity = PVector.random2D();
  }

  void render() {
    point(position.x, position.y);
    position.add(velocity);
  }
}
