//your variable declarations here
Spaceship bob;
public void setup() 
{
  //your code here
  size(600,600);
  bob = new Spaceship();
}
public void draw() 
{
  //your code here
  background(0);
  bob.show();
  bob.move();
}

public void keyPressed(){
  double value =0;
  if(key == 'r'){//turn right
    bob.turn(8);
  }
  if(key == 'l'){//turn left
    bob.turn(-8);
  }
  if (key =='a'){
    value+=.2;
    bob.accelerate(value);
  }
  if(key =='h'){
    bob.hyperspace();
  }
}
