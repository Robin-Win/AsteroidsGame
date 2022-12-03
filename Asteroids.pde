class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(int number)
  {
    corners = 5;
    xCorners = new int[]{(int)(Math.random()*-7 - 8), (int)(Math.random()*7 + 4), (int)(Math.random()*7 + 6), (int)(Math.random()*-7 - 4), (int)(Math.random()*-7 - 2)};
    yCorners = new int[]{(int)(Math.random()*-7 - 5), (int)(Math.random()*-7 - 5), (int)(Math.random()*8+5), (int)(Math.random()*7 + 5), (int)(Math.random()*3)};
    myColor = color(255, 255, 255);
    myCenterX = (int)(Math.random()*250);
    myCenterY = (int)(Math.random()*250);
    myXspeed = (Math.random() * 3 - 1);
    myYspeed = (Math.random() * 3 - 1);
    myPointDirection = (int)(Math.random()*360);
    rotSpeed = (Math.random()*5-2);
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
    public int getMyCenterX()
  {
    return (int)myCenterX;
  }
  public int getMyCenterY()
  {
    return (int)myCenterY;
  }
  
}
