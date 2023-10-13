class Vector2 
{
  int x;
  int y;
  
  Vector2(int xpos, int ypos){
   x = xpos;
   y = ypos;
  }
  
  Vector2 zero() {
   return new Vector2(0,0); 
  }
  Vector2 up() {
   return new Vector2(0,-1); 
  }
  Vector2 down() {
   return new Vector2(0,1); 
  }
  Vector2 left() {
   return new Vector2(-1,0); 
  }
  Vector2 right() {
   return new Vector2(1,0); 
  }
  
  Vector2 suma(Vector2 a, Vector2 b){
    return new Vector2(a.x + b.x, a.y + b.y);
  }
  
}
