void setup(){
  size(800,800,P3D);
}

float rotationAngle=0.0;

void draw(){
lights();
background(0);
translate(width/2,height/2);
fill(200);
rotateX(rotationAngle);
rotateY(rotationAngle);
rotateZ(rotationAngle);
rotationAngle = rotationAngle +0.01;
box(100);
}
