//your variable declarations here
Star[] nightSky = new Star[200];
Spaceship Robin = new Spaceship();
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  //your code here
}
public void draw() 
{
  background(0);
  for(int i = 0; i < 200; i++){
    nightSky[i].show();
  }
  Robin.show();
  //your code here
}
