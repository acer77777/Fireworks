class Particle{
 float gravity = 0.5;
 float friction1 = -0.05;
 float friction2 = 0.05;
float x = width*0.5;
float y = height*0.5;
float deltaX = random(-7, 7);
float deltaY = random(-15, 0);
float radius = random(8, 15);


 
void reset(){
 if (y < 800){ 
  deltaY += gravity;
   }
 x += deltaX;
 y += deltaY;
  x = mouseX;
  y = mouseY;
  deltaX = random(-7, 7);
  deltaY = random(-15, 0);
  gravity = 0.5;
 radius = random(8, 15);

}
 void classDraw(){
   if (y < 800){ 
  deltaY += gravity;
   } else {
     
   }
 x += deltaX;
 y += deltaY;
  fill(random(255), random(255), random(255));
 ellipse(x, y, radius, radius);
 
  
 }
  void EdgeDetection() {
  if (x > 580) {
    if(deltaX == 0){
    deltaX+= 1;
    };
    deltaX *= -1;
  }
   if (x < 230) {
    if(deltaX == 0){
    deltaX+= -1;
    };
    deltaX *= -1;
  }
  if (y < 310|| y > 800) {
     if(deltaY <= 0.1){
    deltaY+= -1;
    };
    deltaY *= -0.85;
   
   
  }
 
}
}