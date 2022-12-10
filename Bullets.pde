class Bullet extends Floater{
  public Bullet(Spaceship Robin){
    myCenterX = Robin.getX();
    myCenterY = Robin.getY();
    myPointDirection = Robin.getPointDirection();
    accelerate(0.6);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public int getMyCenterX () {return (int)myCenterX;}
  public int getMyCenterY () {return (int)myCenterY;}
}
