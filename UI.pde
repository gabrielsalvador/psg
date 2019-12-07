abstract class UI {
  String text;
  OnClick onClick;
  PVector position;
  PVector velocity;
  PVector force;

  abstract void render();
  abstract void _mouseOver();
  void mouseClick() {
    onClick.Do();
  }
}


interface OnClick {

  public void Do();
}


class UIButton extends UI {

  boolean isMouseHovering = false;

  UIButton(String text,PVector position) {
    this.text = text;
  this.position = position;
  }

  void render() {
    textSize(100);
    text(text, position.x, position.y);
  }
  void _mouseOver() {
  }
}


class UIManager {
  ArrayList<UI> uiItems = new ArrayList();
  

}
