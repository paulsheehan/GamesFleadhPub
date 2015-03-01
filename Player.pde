class Player extends GameObject
{
  int pSpeed;
  
  Player()
  {
    this.pos.x = 250;
    this.pos.y = 250;
    pSpeed = 2;  
  }
  
  void update()
  {

      switch(keyCode)
      {
        case LEFT:
          this.pos.x = this.pos.x - pSpeed;
          break;
        case RIGHT:
          this.pos.x = this.pos.x + pSpeed;
          break;
      }
  }
  
  void display()
  {
    fill(100, 100, 100);
    ellipse(p.pos.x, p.pos.y, 10, 10);
    
    
  }
}
