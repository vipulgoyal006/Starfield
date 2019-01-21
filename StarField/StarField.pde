
Star[] stars= new Star[800];                        //initialize the object and the number of stars required
float speed;                                        //determines the speed of the stars

void setup() {
  size(800,800);
  
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  speed = map(mouseX, 0, width, 0, 20);             //alters the speed of the stars on moving horizontally
  background(0);                                    //set background color black
  translate(width/2, height/2);                     //fan out from the centre of the screen
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}
