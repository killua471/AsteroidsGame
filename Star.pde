class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myColor, myX, myY;
  private float size;
  
  public Star(){
   myX= (int)(Math.random()*width);
   myY= (int)(Math.random()*height); 
   size= (float)Math.random()*7.5;
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  public void show(){
    fill(myColor);
    noStroke();
    ellipse(myX,myY,size,size);
  }
}
