class Path 
{
  PVector pos;
  PVector track;
  
  boolean direction;
  color colour;
  
  float speed;
  float gap = 20;
  float size = (height)/gap;
  
  Path()
  {
    pos = new PVector(50, 400);
    track = new PVector(133, -400);
  }
  
  void begin()
  {
    //transmitter box
    fill(255);
    stroke(0);
    rect(pos.x, pos.y, 400, 100);
    //three tracks (green, blue and red)
    stroke(0);
    fill(0, 120, 0);
    rect(pos.x, pos.y, track.x, track.y);
    fill(0, 0, 120);
    rect(pos.x+133, pos.y, track.x, track.y);
    fill(120,0,0);
    rect(pos.x+266, pos.y, track.x+1, track.y);
    //centre line
    stroke(0,0,255);
    line(width/2 , pos.y, width/2, -7);
    //graphed lines going horizontally
    for(int i=0;i<size;i++)
    {
      stroke(0);
      line(pos.x,pos.y, pos.x+400, pos.y);
      pos.y -= gap;
    }
  }
  
  void move()
  {
    
    //three tracks
    stroke(0);
    fill(0, 120, 0);
    rect(pos.x, pos.y, track.x, track.y);
    fill(0, 0, 120);
    rect(pos.x+133, pos.y, track.x, track.y);
    fill(120,0,0);
    rect(pos.x+266, pos.y, track.x+1, track.y);
  }
}
