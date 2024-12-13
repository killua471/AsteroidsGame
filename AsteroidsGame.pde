//your variable declarations here
Spaceship bob;
ArrayList <Asteroid> a = new ArrayList<Asteroid>();
ArrayList <Bullet> shots = new ArrayList<Bullet>();
Star[] sue = new Star[100];
boolean[] click = new boolean[5];
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
  
  for(int i=0; i<shots.size(); i++){
    shots.get(i).show();
    shots.get(i).move();
  }

  //spaceship collision with asteroid
  for(int i =0;i<a.size(); i++){
    if(dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)a.get(i).getCenterX(), (float)a.get(i).getCenterY()) <20){
      a.remove(i);
      i--;
    }
  }

  //bullet goes off screen
  for(int i = shots.size()-1; i>=0; i--){
    if(shots.get(i).getCenterX()>width|| shots.get(i).getCenterX()<0 ||shots.get(i).getCenterY()>height || shots.get(i).getCenterY() <0){
      shots.remove(i);
    }
  }

//bullet collision with asteroid
  for(int i =shots.size()-1;i>=0; i--){
    for(int j =a.size()-1; j>=0; j--){
      if(dist((float)shots.get(i).getCenterX(), (float)shots.get(i).getCenterY(), (float)a.get(j).getCenterX(), (float)a.get(j).getCenterY()) <20){
        shots.remove(i);
        a.remove(j);
        break;
      }

    
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
  /*
   if (click[3]==true){
    shots.add(new Bullet(bob));
  */
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
  if(key == 's'){
    //click[3]=true;
    shots.add(new Bullet(bob));
  }
}
