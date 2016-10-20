class Monster {
  int x;
  int y;
  int r =255;
  int g = 50;
  int b = 160;
  int d;
  int f;


  Monster (int xloc, int yloc) {
    x = xloc;
    y = yloc;
   
  }

  void display() {

    //Monster  legs

    strokeWeight(3);
    fill(0, 255, 0);
    rect( x + 10, y + 140, 50, 150);
    rect( x + 110, y + 140, 50, 150);

    //Monster arms
    fill(255, 25, 128);
    quad( x - 100, y + 75, x - 25, y + 75, x + 10, y + 110, x - 125, y + 110);
    quad( x + 190, y + 75, x + 275, y + 75, x + 300, y + 110, x + 175, y + 110);

    //Monster Body
    stroke(0);
    strokeWeight(3);
    fill(r, g, b);
    quad(x, y, x + 150, y, x + 200, y + 150, x, y + 200);

    //****head of monster

    //Monster horns
    fill(0, 0, 255);
    triangle( x - 30, y - 50, x - 50, y - 125, x + 50, y - 50);
    fill( 0, 0, 255);
    triangle( x + 25, y - 125, x + 25, y - 180, x + 70, y - 125);


    //Monster teeth
    fill(255);
    for ( int o = (x + 70); o <= ( x + 170); o += 10) {
      fill(255);
      triangle(o, y - 25, o + 10, y - 65, o + 15, y - 35);
    }

    for (int p = ( y - 147); p <= ( y - 75); p +=10) {
      fill(255);
      triangle ( x + 70, p, x + 90, p+10, x + 70, p +20);
    }

    //Monster tongue

    //tongue(d,f);


    //Monster Head
    fill(255, 167, 24);
    arc(x + 75, y - 50, 225, 200, 0, PI+HALF_PI, PIE);

    //Monster eyes
    fill(255);
    ellipse( x + 55, y - 100, 30, 20);

    //pupil
    fill(0);
    ellipse( x + 55, y - 100, 9, 9);

    //****end of Head***



    //Monster Hands
    fill(255, 241, 48);
    arc( x - 125, y + 75, 75, 75, 0, PI+QUARTER_PI, CHORD);
    arc( x + 300, y + 75, 75, 75, 0, PI+QUARTER_PI, CHORD);

    //Monster Feet
    fill( 162, 98, 255);
    ellipse( x + 40, y + 290, 70, 30); 
    ellipse( x + 140, y + 290, 70, 30);
  }
 /* void rotate(float angle) {
    angle = cos(angle);
    rotate(angle);
    x = int (angle);
    y = int (angle);
  }
*/
  void tongue(int d, int f) {
    //Monster Tongue
    d = x;
    f = y;
    fill(255, 102, 93);
    quad( d + 80, f - 50, d + 200, f - 120, d + 190, f - 110, d + 80, f- 60);
  }

  void move(int A, int B) {
    x += A;
    y += B;
    if ( x > width) {
      x =- A;
    }
    if ( y > height) {
      y =- B;
    }
  }
  void change(int R, int G, int Bl) {
    r -= R;
    g += G;
    b += Bl;

    if (x > width) {
      r += R;
      g -= G;
      b -= Bl;
    }
    if ( y > height) {
      r -= R;
      g += G;
      b-= Bl;
    }
  }
}