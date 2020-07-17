void setup() { 
  size(1000, 1000);
  noStroke();
  fill(255);
  background(0);
}

float radius = 50;
float theta = 0;

void draw() {
  float a = radius*cos(theta);
  float b = radius*sin(theta);
  if(mousePressed == true){
     //greyscale colors when mouse key is pressed
     fill(random(255)); 
   }else{
     //colorful
     fill(radius*10%255,random(255),random(255)); 
   }
   //draw the circles
  ellipse(height/2 + a, width/2 +b , radius*10%30, radius*10%30);
  ellipse(height/2 - a, width/2 -b , radius*10%30, radius*10%30);
  //spirals
  radius += 0.1;
  theta += 0.05;
}