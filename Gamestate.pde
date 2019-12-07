abstract class Gamestate {

  abstract void gameLoop();
  abstract void _mouseMoved(int x, int y);
  abstract void _mousePressed(int x, int y);
}

class GamestateManager {
  ArrayList<Gamestate> states = new ArrayList();
  int currentState;

  GamestateManager() {
    states.add(new Startstate());
    states.add(new Playstate());
  }
  void gameLoop() {
    states.get(currentState).gameLoop();
  }
}


class Startstate extends Gamestate {

  ArrayList<UIButton> buttons = new ArrayList();;

  Startstate() {
    //inserir butoes
    String[] butoes = {"Play", "Instructions", "Credits", "?????"};
    PVector startpos = new PVector (15, 55);
    for(String s : butoes){
      buttons.add(new UIButton(s,startpos.copy().add(0,200)).copy());
    }
  }
  void gameLoop() {
    translate(20, 55);
    for (UIButton b : buttons) {
      b.render();
    }
  }

  void _mouseMoved(int x, int y) {
  }
  void _mousePressed(int x, int y) {
  }
}

class Playstate extends Gamestate {

  void gameLoop() {
    for ( Object i : objects) {
      i.render();
    }
  }
  void _mouseMoved(int x, int y) {
  }
  void _mousePressed(int x, int y) {
  }
}
