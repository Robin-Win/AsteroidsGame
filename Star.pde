class Star //note that this class does NOT extend Floater
{
  int C = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  //your code here
  private int myX, myY;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show()
  {
    fill(C);
    ellipse(myX, myY, 5, 5);
  }
}
