ArrayList<Shape> shapes = new ArrayList<Shape>();
Particle[] particles = new Particle[100];
int i;

void setup() {
 size(800, 800);  
   for(i = 0; i < particles.length; i++) {
   particles[i] = new Particle();
 };
 
 
  Rectangle r = new Rectangle(220, 300, 10, 500, color(0));
  Rectangle a = new Rectangle(580, 300, 10, 500, color(0));
  Rectangle b = new Rectangle(220, 300, 370, 10, color(0));
  Rectangle c = new Rectangle(220, 790, 370, 10, color(0));
  
  shapes.add(r);
  shapes.add(a);
  shapes.add(b);
  shapes.add(c);
  

}

void draw() {
 
  background(255);
  
 for(int i = 0; i < shapes.size(); i++) {
   shapes.get(i).draw();
 }
  for(i = 0; i < particles.length; i++) {
   particles[i].classDraw();
 };
   for(i = 0; i < particles.length; i++) {
  particles[i].EdgeDetection();
};
fill(0);
rect(220, 790, 370, 10);
stroke(1000);
fill(255);
rect(0, 0, 220, 800);
rect(220, 0, 370, 300);
rect(590, 0, 220, 800);
}

void mousePressed(){
  for(i = 0; i < particles.length; i++) {
  particles[i].reset();
  
  
 };
 
}