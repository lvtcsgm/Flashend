void setup() { 
  size(1000, 1000);
  stroke(255);
  strokeWeight(3);
  fill(255);
  
}

float x = random(width);
float y = random(height);
float angle;
float jitter;
float radius = 50;
float theta = 0;

void draw() {
  background(0);
  //spirals
  float a = radius*cos(theta);
  float b = radius*sin(theta);
  ellipse(height/2 + a, width/2 +b , 10, 10);
  ellipse(height/2 - a, width/2 -b , 10, 10);
  radius += 0.1;
  theta += 0.05;
//random small ellipses in the background 
  float wave1 = sin(radians(frameCount)*5);
  float wave2 = tan(radians(frameCount));
  for(int i = 0; i < 1; i++){
    x = random(width);
    y = random(height);
  ellipse(x+ wave1 * 10, y+wave1*10 , 10, 10);
  ellipse(x +wave1 * -10, y+wave1* -10 , 10, 10);
  ellipse(x+wave1 * -10, y+wave1* 10 , 10, 10);
  ellipse(x+wave1 * 10, y+wave1* -10 , 10, 10);
}
 for(int x = 0; x < 1;x++){
   if(mousePressed == true){
     //flashy colors when mouse key is pressed
 fill(random(255),random(255),random(255)); 
   }
 }
ellipse (height/2 + wave2*100, width/2 + wave2*100, 30 ,30);
ellipse (height/2 + wave2*-100, width/2 + wave2*-100, 30 ,30);
ellipse (height/2 + wave2*-100, width/2 + wave2*100, 30 ,30);
ellipse (height/2 + wave2*100, width/2 + wave2*-100, 30 ,30);

ellipse (height/2 + wave1*100, width/2 + wave1*-100, 30 ,30);
ellipse (height/2 + wave1*-100,width/2 + wave1*100, 30 ,30);
ellipse (height/2 + wave1*-100, width/2 + wave1*-100, 30 ,30);
ellipse (height/2 + wave1*100, width/2 + wave1*100, 30 ,30);
//inner 4 small squares
jitter = random(0,0.1);
  angle += jitter;  
  float c = cos(radians(angle));
  translate(width/2, height/2);
  rotate(c*-500);
  rect(0, 0, 20, 20); 
  rotate(c*50);
  rect(0, 0, 20, 20); 
  rotate(c*50);
  rect(0, 0, 20, 20); 
  rotate(c*50);
  rect(0, 0, 20, 20); 
  
}