int soldierY,soldierX,w,z,robotX,robotY,lacerX,m,o;
PImage soldierImg;
PImage skyImg;  
PImage soilImg;
PImage heartImg;
PImage groundhogImg;
PImage robotImg;

void setup() {
  size(640, 480, P2D);


skyImg = loadImage("img/bg.jpg");

soilImg = loadImage("img/soil.png");

heartImg= loadImage("img/life.png");

groundhogImg = loadImage("img/groundhog.png");


int x,y;
x=floor(random(4));
y=floor(random(4));
soldierY =(160+80*x);
soldierX =0;
robotY= (160+80*y);
robotX= floor(random(160,560));

soldierImg = loadImage("img/soldier.png");
image (soldierImg,-50+soldierX,soldierY,80,80);

robotImg = loadImage("img/robot.png");
image(robotImg,robotX,robotY,80,80);

lacerX=robotX+15;

}


void draw() {
image (skyImg,0,0,640,480);
image (soilImg,0,160,640,320);
image (heartImg,10,10,50,50);
image (heartImg,80,10,50,50);
image (heartImg,150,10,50,50);
noStroke();
fill(RGB);
fill(124,204,25);
rect(0,145,680,15);
image (groundhogImg,250,60,100,100);
noStroke();
fill(255,255,0);
ellipse(590,50,130,130);


fill(253,184,19);
ellipse(590,50,120,120);
image (soldierImg,-50+soldierX,soldierY,80,80);
w+=5;
soldierX = w % 720;

stroke(255,0,0);
strokeWeight(10);
line(lacerX+25-m,robotY+37,lacerX+25-m+o,robotY+37);
o +=2;
if(o>40)o=40;
m += 2;
if(m>160){
  m=0;
  o=0;
  }
  
  image(robotImg,robotX,robotY,80,80);


}

