public void setup(){
	size(500,500);
	rectMode(CENTER);
}
public void draw(){
	background((int)(Math.random()*257));
	myFractal(250,250,400);
}
public void myFractal(int x, int y, int siz){
	stroke((int)(Math.random()*257),(int)(Math.random()*257),(int)(Math.random()*257));
	fill((int)(Math.random()*257),(int)(Math.random()*257),(int)(Math.random()*257));
	rect(x,y,siz,siz);  
  fill(0);
  ellipse(x,y,siz,siz);
	if(siz>10){
		myFractal(x-siz/2,y,siz/2);
		myFractal(x+siz/2,y,siz/2);
		myFractal(x,y+siz/2,siz/2);

	}
	
}