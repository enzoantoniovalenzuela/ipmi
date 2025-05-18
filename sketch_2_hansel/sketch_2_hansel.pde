PImage fondo1, fondo2, fondo3, fondo4, fondo5, fondo6, fondo7, fondo8, fondo9, fondo10, fondo11, fondo12;
int tiempo = 10000;  //Tiempo

color miColor; //random


// crecer
int tam = 1;
int inc = 20;

int posX = 200;// lao a lao
int dir = -1;
//Tres tipos de letras
PFont fuente1;
PFont fuente2;
PFont fuente3;

// Posición y tamaño del botón
int btnX = 220;
int btnY = 400;
int btnW = 200;
int btnH = 50;

void setup() {
size(640, 480);
textSize(30);
//Tres tipos de letras
fuente1 = loadFont("BlackadderITC-Regular-48.vlw");
fuente2= loadFont("MaturaMTScriptCapitals-48.vlw");
fuente3= loadFont("Ravie-48.vlw");

fondo1 = loadImage("1.jpg");
fondo2 = loadImage("2.jpg");
fondo3 = loadImage("3.jpg");
fondo4 = loadImage("4.jpg");
fondo5 = loadImage("5.jpg");
fondo6 = loadImage("6.jpg");
fondo7 = loadImage("7.jpg");
fondo8 = loadImage("8.jpg");
fondo9 = loadImage("9.jpg");
fondo10 = loadImage("10.jpg");
fondo11 = loadImage("11.jpg");
fondo12 = loadImage("12.jpg");
}

void draw() {
if (tiempo > 9500) 
{
textAlign(LEFT);

image(fondo1, 0, 0, width, height);// titulo

fill(#2EBF2C);//verde
textFont(fuente1);
textSize(80);
text("Hansel y Gretel.", posX, 70);
posX += dir;

if (posX > width - 250 || posX < 20) 
{
  dir *= -1;
  
}
textFont(fuente1);
textSize(40);
text("Alemania 1881", 400, 460);
}

else 
if (tiempo > 9000)

{
image(fondo2, 0, 0, width, height);

fill(255);//blanco
textFont(fuente2);
textSize(30);
text("En tiempos duros de hambre y aflicción,", 20, 50);
text("vivían dos niños sin mucha ilusión.", 20, 80);
} 

else 
if (tiempo > 8400) 
{
image(fondo3, 0, 0, width, height);

fill(255);//blanco
text("La cruel madrastra pidió al buen padre,", 20,415);
text("abandonar a los niños en el bosque con hambre.", 20, 450);
} 
else
if (tiempo > 7600) 
{
image(fondo4, 0, 0, width, height);

fill(255);
text("Hansel escuchó, y con gran destreza,", 160, 430);
text("un camino dejo de piedras gruesas.", 140, 460);
} 

else
if (tiempo > 6700) 
{
image(fondo5, 0, 0, width, height);

fill(255);
text("Volviero a casa, pero fue en vano;", 20, 450);
} 
else
if (tiempo > 5700) 
{
image(fondo6, 0, 0, width, height);
    
fill(255);
text("Los dejaron otra vez, sin rumbo ni amparo.", 20, 450);
} 
else 
if (tiempo > 4900) 
{
image(fondo7, 0, 0, width, height);

fill(255);
text("Sin piedras esta vez, pero con migas,", 20, 50);
text("el camino marcaron como salida,", 20, 80);
}
else 
if (tiempo > 4000) 
{
image(fondo8, 0, 0, width, height);

fill(255);
text("Los pájaros del bosque se lo comieron,", 100, 50);
text("borrando el camino que ellos hicieron.", 80, 80);
} 
else 
if (tiempo > 3300) 
{
image(fondo9, 0, 0, width, height);

fill(#E8318D);
text("Perdidos hallaron una casa de azúcar,", 80, 20);
text("que escondía a la gran bruja Malula.", 80, 60);
}
else
if (tiempo > 2400) 
{
image(fondo10, 0, 0, width, height);

fill(#E8318D);
text("La bruja quería hornearlos sin piedad,", 100, 50);
text("pero Gretel la venció con gran habilidad.", 60, 80);
}
else 
if (tiempo > 1800) 
{
image(fondo11, 0, 0, width, height);

fill(#E8318D);
text("Siguiendo el río, volvieron valientes,", 130, 50);
}
else
if (tiempo > 800) 
{
image(fondo12, 0, 0, width, height);

fill(#E3C30B);
text("Dejando el miedo atrás para siempre.", 1, 465);
textSize(35);
}  
if (tiempo > 0) 
{
tiempo--;
}
else 
{
background(miColor);

fill(#FC0307);
textSize(1);
textAlign(CENTER);
textSize(tam);
text("Fin de la historia", 280,250);
tam = tam + inc;

if(tam > 1)
{
inc = 1;
  }else{
    inc = 50;
  }

if (mouseX > btnX && mouseX < btnX + btnW && mouseY > btnY && mouseY < btnY + btnH) {
fill(#FC0307);
cursor(HAND);
} 
else 
{
fill(150, 150, 150);
cursor(ARROW);
}
rect(btnX, btnY, btnW, btnH, 10);//boton
fill(100, 200, 100);

textFont(fuente3);
textSize(15);
text("Reiniciar historia", btnX + btnW/2, btnY + btnH/2 + 7);
}

if (tiempo > 0)
{
tiempo--;
}
}

void mouseClicked() 
{

if (tiempo <= 0 && mouseX > btnX && mouseX < btnX + btnW && mouseY > btnY && mouseY < btnY + btnH)
{
tiempo = 10000;
}
}
