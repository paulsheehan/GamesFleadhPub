class Player
{
  PVector pos;
  boolean direction;
  color colour;
  
  Player(float x, float y, color colour) 
  {
    pos = new PVector(x,y);
    this.colour = colour;
  }
  
  void display()
  {
    fill(colour);
    stroke(0,0,255);
    ellipse(pos.x, pos.y, 20, 20);
  }
  
  void move(boolean direction)
  {
    if(direction == true)
    {
      pos.x++;
    }
    else if(direction == false)
    {
      pos.x--;
    }
  }
}
