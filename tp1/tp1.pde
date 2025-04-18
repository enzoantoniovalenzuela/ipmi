PImage miImagen;
void setup() {
size(800, 400);  
miImagen = loadImage("yo.PNG");
noLoop();
}
void draw(){
background(#666666);
pushMatrix();
translate(200, -50);
scale(1, 1.17);
fill(125, 206, 235);//celeste
rect(0,222, 800, 100);
fill(225, 225, 225);//horizonte
rect(0,222, 800, 004);
fill(#ffA500);//adrillo
rect(0, 310, 800, 400);
fill(#FF6633);//sombra ladrillo
rect(0, 310, 800, 10);
line(000,375,800,375);
line(100,400,100,375);
line(200,400,200,375);
line(300,400,300,375);
line(500,400,500,375);
line(600,400,600,375);
line(700,400,700,375);
line(050,320,050,375);
line(150,320,150,375);
line(250,320,250,375);
line(550,320,550,375);
line(650,320,650,375);
line(750,320,750,375);
line(050,320,100,300);
line(150,320,200,300);
line(250,320,300,310);
line(500,310,550,320);
line(575,310,650,320);
line(750,320,800,300);
line(850,320,775,300);
fill(#333333); //CUERPO
rect(350, 200,100,200);
fill(#333333); //brazo izq
rect(325, 200,25,160,50,0,0,50);
fill(#333333); //brazo der
rect(450, 200,25,160,0,50,50,0);
fill(#ffcc99);//mano izq
rect(333,360, 17, 18, 0, 0,0,50);
fill(#ffcc99);//mano der
rect(450,360,17, 18, 0, 0,50,0);
fill(#333333);//cuellonegro
triangle(350,200, 400, 160, 450,200);
line(350,200,400,320);
line(450,200,400,320);
line(400,320,400,400);
fill(#333333);//boton1
ellipse(412, 326, 8,8);
fill(#333333);//boto2
ellipse(412, 344,8,8);
fill(#ffffff);//camisa blanca
triangle(375, 175, 400, 285, 425, 175);
fill(#ffffff);//cuello blanco
rect(375, 175,50,20, 0, 0, 50, 50);
fill(255,0,0);//cobata arriba
triangle(395,190,400, 185,405, 190);
fill(255,0,0);//corbata abajo
triangle(395,190,400, 200,405, 190);
fill(255,0,0);//corbata larga arriba
triangle(393, 250, 400, 199, 407, 250);
fill(255,0,0);//corbata largaabajo
triangle(392,250,400, 281,408, 250);
fill(#ffcc99);// cuello roza
rect(380, 160,40, 25, 0, 0, 50, 50);
fill(#ffcc99);// cara roza
rect(370, 92,60, 85, 0, 0, 50, 50);
fill(#000000);//limitegorro
rect(350,115,100,10, 50, 50, 20,20);
fill(#000000);//gorro
rect(370, 85,60,30, 50, 50, 0, 0);
fill(#009900);//manzana
rect(380,135,40,35,50, 50, 50, 50);
fill(#009900);//palo de manzana
rect(397, 122,6,18, 50, 50, 50, 50);
fill(#009900);//manzana hoja
ellipse(407,124,18,6);
popMatrix();
image(miImagen, 0,0, 400, 400);
}
