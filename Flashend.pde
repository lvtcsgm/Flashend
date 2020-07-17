void setup() { 
  size(1000, 1000);
  noStroke();
  fill(255);
}
float x = random(width);
float y = random(height);
float angle;
float jitter;

void draw() {
  background(0);
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
