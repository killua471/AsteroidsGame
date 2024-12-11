class Bullet extends Floater{
  public Bullet(Spaceship bob){
    myCenterX = bob.getCenterX();
    myCenterY = bob.getCenterY();
    myPointDirection= bob.getPointDirection();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    accelerate(0.6);
    myColor = color(255,10,10);
  }
  public void show(){
    fill(myColor);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 10,10);
  }
  public double getCenterX(){
    return myCenterX;
  }
   public double getCenterY(){
    return myCenterY;
  }
  
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    
  }   
}
