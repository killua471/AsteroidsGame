class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
      corners =6;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -11;
      yCorners[0] = -8;
      xCorners[1] = 7;
      yCorners[1] = -8;
      xCorners[2] = 13;
      yCorners[2] = 0;
      xCorners[3] = 6;
      yCorners[3] =10;
      xCorners[4] = -11;
      yCorners[4] = 8;
      xCorners[5] = -5;
      yCorners[5] =0;
      
      rotSpeed = Math.random()*10;
      myColor = color(255,255,255);
      myCenterX = Math.random()*width;
      myCenterY = Math.random()*height;
      myXspeed = (Math.random()*2-1);
      myYspeed =(Math.random()*2-1);
      myPointDirection = Math.random()*180;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getCenterX(){
    return myCenterX;
  }
   public double getCenterY(){
    return myCenterY;
  }
  
  public void show ()  //Draws the floater at the current position  
  {             
    noFill();
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
}
