class Star {
  float x;
  float y;
  float z;  
  
    Star() {                                             //generates random values for x, y and z
    x= random(-width, width);
    y= random(-height, height);                      
    z= random(width);
  }
  
  void update()  {
    z= z-speed;                                          //speed at which stars move towards the corner
    if(z < 1)                                            //reinitialize the stars on moving out of the screen
    {
     z= width; 
     x= random(-width, width);
     y= random(-height, height);
    }
  }
  
  void show()  {
   fill(255);
   noStroke();
   
   float sx = map(x/z, 0, 1, 0, width);                  //calculate x co-ordinate
   float sy = map(y/z, 0, 1, 0, height);                 //calculate y co-ordinate
   
   float r = map(z, 0, width, 16, 0);                    //calculate size of star based on distance from the edge
   ellipse(sx, sy, r, r);

 
  }
  
}
