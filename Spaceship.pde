class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
      corners =4;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = -1;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = 16;
      yCorners[3] =0;
      myColor = color(255,255,255);
      myCenterX = width/2;
      myCenterY = height/2;
      myXspeed = 0;
      myYspeed =0;
      myPointDirection = 0;
      
    }
    public void hyperspace(){
      myXspeed = 0;
      myYspeed=0;
      myCenterX = (double)(Math.random()*width/1.1);
      myCenterY = (double)(Math.random()*height/1.1);
      myPointDirection = Math.random()*360;
    }
  public double getCenterX(){
    return myCenterX;
  }
   public double getCenterY(){
    return myCenterY;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
    public double getXspeed(){
    return myXspeed;
  }
   public double getYspeed(){
    return myYspeed;
  }
}
