class Star //note that this class does NOT extend Floater
{
  int myC = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  //your code here
  private int myX, myY;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show()
  {
    fill(myC);
    stroke(myC);
    ellipse(myX, myY, 5, 5);
  }
}
