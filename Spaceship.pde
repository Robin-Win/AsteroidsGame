class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new int[]{-8, 16, -8, -2};
      yCorners = new int[]{-8, 0, 8, 0};
      myColor = color(209, 159, 242);
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
      public void hyperspace(double x) {
        myXspeed = x;
        myYspeed = x;
        myCenterX = (int)(Math.random()*500);
        myCenterY = (int)(Math.random()*500);
        myPointDirection = (int)(Math.random()*360);
      }
    public int getX(){return (int)myCenterX;}
    public int getY(){return (int)myCenterY;}
    public double getPointDirection(){return myPointDirection;}
}
