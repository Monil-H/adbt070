class Planet {

  float angle;

  void path(float i, float j) {
    //creates a ellipse with no fill and a white outline
    //ellipse is i wide and j tall from the center of the canvas
    noFill();
    stroke(255);
    strokeWeight(1);
    ellipse(width/2, height/2+50, i, j);
  }

  void move(float red, float green, float blue, float speed, float radius, float r) {
    //draws a dynamic planet
    //use sin and cos for x and y to create off set peaks, 
    //when one is at max the other is at 0, 
    //raduis determins the magnitiude, the maximun peak value from teh center postion
    //angle determins the frequenccy,
    //if speed= big then less rotations, speed= small then more rotations 
    stroke(0);
    fill(red, green, blue);
    angle = frameCount/speed;
    circle(width/2 + radius*cos(angle), height/2+50 + (radius/2)*sin(angle), r);
  }

  void draw(float red, float green, float blue, float x, float r) {
    //draws a static planet
    //gives it a colour, xpos and raduis 
    // y pos will alwas be height/2
    stroke(0);
    fill(red, green, blue);
    circle(x, height/2+50, r);
  }

  void showname(String name, float speed, float radius) {
    //shows name of the planet and moves alongside it  
    textSize(15);
    fill(255);
    angle = counter/speed;
    text(name, width/2 + radius*cos(angle), (height/2+50 + (radius/2)*sin(angle))+25);
  }

  void displayYears(int time) {
    //dispalys the number of years for a planet
    //each full rotation == 1 year
    //frameCount/number == number of years
    //(number of years,xpos,ypos of text)
    textSize(25);
    fill(255);
    text(" Years On Mercury: "+ (time/60), 100, 50);
    text(" Years On Venus: "+ (time/125), 100, 100);
    text(" Years On Earth: "+ (time/190), 100, 150);
    text(" Years On Mars: "+ (time/250), 100, 200);
    text(" Years On Jupiter: "+ (time/310), 600, 50);
    text(" Years On Saturn: "+ (time/380), 600, 100);
    text(" Years On Uranus: "+ (time/440), 600, 150);
    text(" Years On Neptune: "+ (time/500), 600, 200);
    textSize(45);
    text("Press H to show and hide planet names", 10, height-10);
  }

  void drawring(float red, float green, float blue, float x, float r) {
    //draws a statoriany ring around saturn 
    noFill();
    stroke(red, green, blue);
    strokeWeight(2);
    ellipse(x, height/2+50, r, r/2);
  }

  void movering(float red, float green, float blue, float speed, float radius, float r) {
    //draws a moving ring around saturn 
    noFill();
    stroke(red, green, blue);
    strokeWeight(2);
    angle = frameCount/speed;
    ellipse(width/2 + radius*cos(angle), height/2+50 + (radius/2)*sin(angle), r, r/2);
  }
}
