Spaceship Robin = new Spaceship();
Star[] nightSky = new Star[200];

public void setup()
{
  size(500, 500);
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < 200; i++){
    nightSky[i].show();
  }
  if(keyPressed)
  {
    if(key == 'a' || key == 'A'){
      Robin.turn(-10);
    }
    if(key == 'd' || key == 'D'){
      Robin.turn(10);
    }
    if(key == 'w' || key == 'W'){
      Robin.accelerate(0.1);
    }
    if(key == 'h' || key == 'H'){
      Robin.setXspeed(0);
    }
  }
  Robin.move();
  Robin.show();
}
