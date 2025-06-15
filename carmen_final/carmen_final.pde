// https://youtu.be/W3vB0p4fZ0Q
PImage imagen;
int numBarras = 24;
float anchoBarra;
float altoFranja = 10;
float altoBarrasFondo;

float desplazamiento = 0;
float anchoCorte;

void setup() {
  size(800, 400);


  anchoBarra = (width - 400.0) / float(numBarras);

  altoBarrasFondo = height - 2 * altoFranja;

  imagen = loadImage("carmen.jpg");
}

void draw() {
  background(255);
  image(imagen, 0, 0, 400, 400);

  anchoCorte = constrain(map(mouseX, 0, width, 20, 150), 20, 150);
  desplazamiento = desplazamiento + 0.5;
  desplazamiento += 0.5;
  if (desplazamiento > anchoCorte) {
    desplazamiento = 0;
  }
  for (int i = 0; i < numBarras; i++) {
    float x1 = 400 + i * anchoBarra;

    if (i % 2 == 0) {
      fill(0);
    } else {
      fill(255);
    }

    noStroke();
    rect(x1, altoFranja, anchoBarra, altoBarrasFondo);
  }

  for (int i = 0; i < numBarras; i++) {
    float x1 = 400 + i * anchoBarra;
    float x2 = x1 + anchoBarra;
    float x1z = (x1 + desplazamiento) % (width - 400) + 400;

    float x2z = x1z + anchoBarra;

    if (x1z > width) continue;
    int c = int((x1z - 400) / anchoCorte);

    float y1, y2;

    if (c % 2 == 0) {

      y1 = map(x1z, 400 + c * anchoCorte, 400 + (c + 1) * anchoCorte, altoFranja, height - altoFranja);
      y2 = map(x2z, 400 + c * anchoCorte, 400 + (c + 1) * anchoCorte, altoFranja, height - altoFranja);
    } else {

      y1 = map(x1z, 400 + c * anchoCorte, 400 + (c + 1) * anchoCorte, height - altoFranja, altoFranja);
      y2 = map(x2z, 400 + c * anchoCorte, 400 + (c + 1) * anchoCorte, height - altoFranja, altoFranja);
    }

    if (i % 2 == 0) fill(255);
    else fill(0);

    noStroke();
    float baseY;
    if (c % 2 == 0) {
      baseY = altoFranja;
    } else {
      baseY = height - altoFranja;
    }



    beginShape();
    vertex(x1z, baseY);
    vertex(x2z, baseY);
    vertex(x2z, y2);
    vertex(x1z, y1);
    endShape(CLOSE);
  }


  int numBarrasBorde = 48;
  float anchoBarraBorde = (width - 400.0) / float(numBarrasBorde);
  for (int i = 0; i < numBarrasBorde; i++) {
    float x = 400 + i * anchoBarraBorde;
    fill(i % 2 == 0 ? 0 : 255);
    noStroke();
    rect(x, 0, anchoBarraBorde, altoFranja);
    rect(x, height - altoFranja, anchoBarraBorde, altoFranja);
  }
}
