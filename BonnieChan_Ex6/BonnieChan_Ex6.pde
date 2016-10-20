Monster a;
Monster b;
Monster c;
Lizard d;
Lizard bob;
void setup(){
  size(1000,1000);
  background(255);
  c = new Monster (800, 200);
  b = new Monster(600,600);
  a = new Monster (100,200);
  d = new Lizard (300,500);
  bob = new Lizard (200,400);
  
  a.display();
}

void draw(){
  background(255);
  
  //monster from parent Monster class that moves horizontally at the same speed as monster c
  a.move(5,0);
  a.display();
  a.change(3,1,4);
  
  //monster from parent Monster class that moves vertically at a faster speed than Monster c
  if (mouseX > 500){
   b.display();
   b.move (0, 5);
   b.change(2, 1, 2);
  }
  
  //monster from parent Monster class that moves vertically and changes color
  c.move(0,3);
  c.display();
  c.change(1,4,3);
 //new monster Lizard that inherited from parent Monster class has a tongue
  d.display();
  d.tongue();
  d.move(0,2);

  //if mouse is pressed, another lizard monster will appear
  if (mousePressed) {
    bob.display();
    bob.tongue();
    
  }

}

  