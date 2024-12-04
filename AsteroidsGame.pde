//your variable declarations here
Spaceship bob;
ArrayList <Asteroid> a = new ArrayList<Asteroid>();
Star[] sue = new Star[100];
boolean[] click = new boolean[4];
double value=0.1;

public void setup() 
{
  //your code here
  size(600,600);
  bob = new Spaceship();
  
  for(int i =0; i<sue.length;i++){
    sue[i]= new Star();
    a.add(new Asteroid());
  }
  
}
public void draw() 
{
  //your code here
  background(0);
  for(int i =0; i<sue.length;i++){
    sue[i].show();
  }
  for(int i=0; i<a.size(); i++){
    a.get(i).show();
    a.get(i).move();
  }
  bob.show();
  bob.move();
  
  for(int i =0;i<a.size(); i++){
    if(dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)a.get(i).getCenterX(), (float)a.get(i).getCenterY()) <20){
      a.remove(i);
      i--;
    }
  }
  
  if(click[0]==true){//turn right
    bob.turn(8);
  }
  if(click[1]==true){//turn left
    bob.turn(-8);
  }
  if (click[2]==true){
    bob.accelerate(value);
  }
}

public void keyReleased(){
  if(key == 'r'){//turn right
    click[0]=false;
  }
  if(key == 'l'){//turn left
    click[1]=false;
  }
  if (key =='a'){
    click[2]=false;
  }
}

public void keyPressed(){
  if(key == 'r'){//turn right
    click[0]=true;
  }
  if(key == 'l'){//turn left
    click[1]=true;
  }
  if (key =='a'){
    click[2]=true;
    //value+=.01;
  }
  if(key =='h'){
    bob.hyperspace();
  }
}
