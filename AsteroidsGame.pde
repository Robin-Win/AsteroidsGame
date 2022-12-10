  for(int i = 0; i < 15; i++)
  {
    Ketchup.add(new Asteroid(i));
  }
}
public void draw() 
{
  background(0);
  Robin.move();
  Robin.show();
  for(int i = 0; i < 200; i++){
    nightSky[i].show();
  }
  for(int i = 0; i < pew.size(); i++){
    pew.get(i).show();
    pew.get(i).move();
  }
  for(int i = 0; i < Ketchup.size(); i++) {
    Ketchup.get(i).show();
    Ketchup.get(i).move();
    float d = dist(Robin.getX(), Robin.getY(), Ketchup.get(i).getMyCenterX(), Ketchup.get(i).getMyCenterY());
    if(d < 15)
    Ketchup.remove(i);
  }
  for(int i = 0; i < pew.size(); i++){
    for(int j = 0; j < Ketchup.size(); j++){
      if(dist(pew.get(i).getMyCenterX(), pew.get(i).getMyCenterY(), Ketchup.get(j).getMyCenterX(), Ketchup.get(j).getMyCenterY()) < 15) {
        Ketchup.remove(j);
        pew.remove(i);
        break;
      }
    }
  }
  if(keyPressed){
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
      Robin.hyperspace(0);
    } 
  }
}
   public void keyPressed()
  {
    if(key == ' '){
      pew.add(new Bullet(Robin));
    }
  }
