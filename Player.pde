class Player extends GameObject
{
  int speed;
  
  Player()
  {
    this.pos.x = 250;
    this.pos.y = 250;
    speed = 4;  
  }
  
  void update()
  {

      switch(keyCode)
      {
        case LEFT:
          this.pos.x = this.pos.x - speed;
          break;
        case RIGHT:
          this.pos.x = this.pos.x + speed;
          break;
      }
  }
  
  void display()
  {
    fill(100, 100, 100);
    ellipse(p.pos.x, p.pos.y, 10, 10);
    
    
  }
}
