class Path extends GameObject
{
  int type;  //3 types of paths, middle, outher, and outhest paths
  int speed;
  int pSpeed;
  
  Path(int x, int y, int w, int h, int speed)
  {
    this.pos.x = x;
    this.pos.y = y;
    this.wh.x = w;
    this.wh.y = h;
    this.alive = true;
    this.speed = speed;
    
    //Just assigns an interger to tile.type depending on what element was passed in our main class
    if(x == 0 || x == 4)
    {
      type = 2;    //Each type could have a different picture?
    }
    if(x == 1 || x == 3)
    {
      type = 1;
    }
    if(x == 2)
    {
      type = 0;
    }
    
  }

  void update(int i)
  {
    
    if(this.pos.y < height)  //If tile is still on screen
    {
      this.pos.y = this.pos.y + this.speed - this.pSpeed;
    }
    else                     //If not tile dies and is removed from arraylist
    {
      alive = false;
      tile.remove(i);
    }
  }
  
  void display()
  {
    if(this.alive == true)
    {
      //image(tiles[0], this.pos.x, this.pos.y);
      fill(30, 30, 110);
      rect(this.pos.x, this.pos.y, this.wh.x, this.wh.y);
    }
  }
}
