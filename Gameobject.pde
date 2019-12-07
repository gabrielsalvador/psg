abstract class Object {
PVector position;

Object(int x, int y){
position = new PVector(x,y);
}

abstract void render();
abstract void update();

}
