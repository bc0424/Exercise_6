class Lizard extends Monster{
   
  color opac;
  Lizard (int xloc, int yloc){
    super(xloc,yloc);
   }
  
  
  
  void tongue (){
   super.tongue(d, f);
     d -= random(10);
     f-= random(20);
  }

    
  
  
  
  
  
}