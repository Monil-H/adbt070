Planet planet;

PImage background;
boolean wait = false;
boolean show;
int pressed=1;
int counter;

void setup()
{
  planet = new Planet();
  size(1000, 800);
  background = loadImage("background.jpg");
}

void draw()
{
  //draws an image and sezies it  so that it fits the whole canvas
  image(background, 0, 0);
  background.resize(1200, 1200);
  
  //displays the number of years 
  planet.displayYears(counter);

  for (float i=1; i<9; i++) {
    //draws 8 orbital paths of different sizes
    planet.path(100+i*100, 50+i*50);
  }

  planet.draw(239, 200, 56, 500, 50);//sun
  if (wait==false) { 
    //draws a stationary planet 
    planet.draw(26, 26, 26, 400, 8);//mercury  
    planet.draw(230, 230, 230, 350, 10);//venus
    planet.draw(47, 106, 105, 300, 12);//earth
    planet.draw(153, 61, 0, 250, 20);//mars
    planet.draw(176, 127, 53, 200, 40);//jupiter
    planet.draw(176, 143, 54, 150, 30);//saturn
    planet.draw(85, 128, 230, 100, 9);//uranus
    planet.draw(54, 104, 200, 50, 8);//neptune
    planet.drawring(171, 96, 74, 150, 40);//saturn ring
  } else {
    //draws a moving planet 
    planet.move(26, 26, 26, 10, -100, 8);//mercury  
    planet.move(230, 230, 230, 20, -150, 10);//venus
    planet.move(47, 106, 105, 30, -200, 12);//earth
    planet.move(153, 61, 0, 40, -250, 20);//mars
    planet.move(176, 127, 53, 50, -300, 40);//jupiter
    planet.move(176, 143, 54, 60, -350, 30);//saturn
    planet.move(85, 128, 230, 70, -400, 9);//uranus
    planet.move(54, 104, 200, 80, -450, 8);//neptune
    planet.movering(171, 96, 74, 60, -350, 40);//saturn ring
    counter+=1;
  }

  if ((frameCount==120)&&(wait==false)) {
    //creates a stationary period where nothing moves 
    wait=true;
    frameCount = 0;
  }

  if (show==true) {
    //shows the name of the planets 
    planet.showname("Mercury", 10, -100);
    planet.showname("Venus", 20, -150);
    planet.showname("Earth", 30, -200);
    planet.showname("Mars", 40, -250);
    planet.showname("Jupiter", 50, -300);
    planet.showname("Saturn", 60, -350);
    planet.showname("Uranus", 70, -400);
    planet.showname("Neptune", 80, -450);
  }
}

void keyPressed() {
  //a toggle to show and hide planet names with the same keypress 
  if (key=='h') {
    pressed+=1;
    if (pressed%2==0) {
      show=true;
    } else {
      show=false;
    }
  }
}
