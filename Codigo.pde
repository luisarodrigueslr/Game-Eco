int xPos; //Movimento do fundo e do animal no eixo do x
int y; //Posição dos pontos das árvores em relação ao eixo y
int [] painel1 = new int[50]; // Painel de fundo
int [] painel2 = new int[50];
int [] painel3 = new int[50];
int [] painel4 = new int[50];
int [] painel5 = new int[50]; //Painel mais próximo

PImage [] animais = new PImage[4]; // Array de imagens
PImage animal; //Imagem do animal que está a demonstrar no momento
int wi; // Width da imagem
int hi; // Height da imagem
int xi; //posição da imagem em x
int yi; //posição da imagem em y

int h = 0; //Cor inicial. Valor hexadecimal: #804747
color c; //Define a cor conforme o tom, saturação e brilho

void setup() 
{
  colorMode(HSB, 100); //Definir em que modo a cor do fundo é processado
  size(1000, 800);  // Tamanho da janela
  stroke(0);     // definir a cor da linha para preto
  
  for (int i = 0; i < 50; i++)
    painel1[i] = (int) random(0, 15); //primeiro painel (fundo)
    
  for (int i = 0; i < 50; i++)
    painel2[i] = (int) random(0, 15); //segundo painel (fundo)
    
  for (int i = 0; i < 50; i++)
    painel3[i] = (int) random(0, 15); //terceiro painel (fundo)
    
  for (int i = 0; i < 50; i++)
    painel4[i] = (int) random(0, 15); //quarto painel (fundo)
    
  for (int i = 0; i < 50; i++)
    painel5[i] = (int) random(0, 15); //último painel (fundo)
  
  xPos = 0; //Valor inicial do movimento
  y = height - 600; //Valor dos pontos no primeiro painel em relação a y
  
  wi = 100; //Largura da imagem dos animais
  hi = 126; //Altura da imagem dos animais
  animais[0] = loadImage ("animais0.png"); //Imagem do coelho
  animais[1] = loadImage ("animais1.png"); //Imagem do pássaro
  animais[2] = loadImage ("animais2.png"); //Imagem do esquilo
  animais[3] = loadImage ("animais3.png"); //Imagem da cobra
  animal = animais[0]; //começa sempre no coelho
  xi = (int) random(-20, 1050); //Define a sua posição inicial aleatóriamente em relação a x
  yi = (int) random(height - 600, height - 100); //Define a sua posição inicial  aleatóriamente em relação a y
    
}

void draw() 
{ 
  c = color(h, 45, 50); 
  background(c);
  
  fill(60, 0, 51, 40);     // definir a cor de preenchimento
  
  beginShape(); // definir painel 1
    curveVertex(painel1[0] - 500 + xPos, y);
    curveVertex(painel1[1] - 440 + xPos, y - 10);
    curveVertex(painel1[2] - 400 + xPos, y - 20); 
    curveVertex(painel1[3] - 350 + xPos, y - 20); 
    curveVertex(painel1[4] - 300 + xPos, y - 10); 
    curveVertex(painel1[5] - 250 + xPos, y - 20); 
    curveVertex(painel1[6] - 200 + xPos, y - 20); 
    curveVertex(painel1[7] - 150 + xPos, y - 20); 
    curveVertex(painel1[8] - 100 + xPos, y - 10); 
    curveVertex(painel1[9] * 0 + xPos, y - 20); 
    curveVertex(painel1[10] + 90 + xPos, y - 10); //árvore »
    curveVertex(painel1[11] + 100 + xPos, y - 60);
    curveVertex(painel1[12] + 95 + xPos, y - 110);
    curveVertex(painel1[13] + 100 + xPos, y - 160);
    curveVertex(painel1[13] + 105 + xPos, y - 210);
    curveVertex(painel1[13] + 100 + xPos, y - 260);
    curveVertex(painel1[13] + 95 + xPos, y - 310);
    curveVertex(painel1[13] + 100 + xPos, y - 360);
    curveVertex(painel1[14] + 150 + xPos, y - 360);
    curveVertex(painel1[15] + 155 + xPos, y - 310);
    curveVertex(painel1[15] + 150 + xPos, y - 260);
    curveVertex(painel1[15] + 145 + xPos, y - 210);
    curveVertex(painel1[15] + 150 + xPos, y - 160);
    curveVertex(painel1[15] + 155 + xPos, y - 110);
    curveVertex(painel1[15] + 150 + xPos, y - 60);
    curveVertex(painel1[15] + 145 + xPos, y - 10); //« árvore
    curveVertex(painel1[16] + 200 + xPos, y - 20); 
    curveVertex(painel1[17] + 250 + xPos, y - 20); 
    curveVertex(painel1[18] + 300 + xPos, y - 10); 
    curveVertex(painel1[19] + 350 + xPos, y - 20); 
    curveVertex(painel1[20] + 400 + xPos, y - 20); 
    curveVertex(painel1[21] + 450 + xPos, y - 20); 
    curveVertex(painel1[22] + 500 + xPos, y - 10);  //árvore »
    curveVertex(painel1[23] + 510 + xPos, y - 110);
    curveVertex(painel1[23] + 505 + xPos, y - 160);
    curveVertex(painel1[23] + 500 + xPos, y - 210);
    curveVertex(painel1[23] + 495 + xPos, y - 260);
    curveVertex(painel1[23] + 500 + xPos, y - 310);
    curveVertex(painel1[24] + 505 + xPos, y - 360);
    curveVertex(painel1[25] + 555 + xPos, y - 360);
    curveVertex(painel1[26] + 560 + xPos, y - 310);
    curveVertex(painel1[26] + 555 + xPos, y - 260);
    curveVertex(painel1[26] + 550 + xPos, y - 210);
    curveVertex(painel1[26] + 545 + xPos, y - 160);
    curveVertex(painel1[26] + 550 + xPos, y - 110);
    curveVertex(painel1[27] + 555 + xPos, y - 60); //« árvore
    curveVertex(painel1[28] + 600 + xPos, y - 20); 
    curveVertex(painel1[29] + 650 + xPos, y - 20); 
    curveVertex(painel1[30] + 700 + xPos, y - 10); 
    curveVertex(painel1[31] + 750 + xPos, y - 20); 
    curveVertex(painel1[32] + 800 + xPos, y - 20); 
    curveVertex(painel1[33] + 850 + xPos, y - 10); 
    curveVertex(painel1[34] + 900 + xPos, y - 20); 
    curveVertex(painel1[35] + 930 + xPos, y - 20);     
    curveVertex(painel1[36] + 945 + xPos, y - 110); //árvore »
    curveVertex(painel1[37] + 950 + xPos, y - 160);
    curveVertex(painel1[37] + 945 + xPos, y - 210);
    curveVertex(painel1[37] + 950 + xPos, y - 260);
    curveVertex(painel1[37] + 955 + xPos, y - 310);
    curveVertex(painel1[38] + 950 + xPos, y - 360);
    curveVertex(painel1[39] + 1030 + xPos, y - 360);
    curveVertex(painel1[40] + 1035 + xPos, y - 310);
    curveVertex(painel1[40] + 1040 + xPos, y - 260);
    curveVertex(painel1[40] + 1035 + xPos, y - 210);
    curveVertex(painel1[40] + 1040 + xPos, y - 160);
    curveVertex(painel1[40] + 1035 + xPos, y - 110);
    curveVertex(painel1[40] + 1040 + xPos, y - 60); //« árvore
    curveVertex(painel1[41] + 1050 + xPos, y - 20);
    curveVertex(painel1[41] + 1500 + xPos, y - 20);
    curveVertex(painel1[42] + 1500 + xPos, y + 800);
    curveVertex(painel1[43] - 500 + xPos, y + 800);
    curveVertex(painel1[44] - 500 + xPos, y);
  endShape();
  
  beginShape();  // definir painel 2
    curveVertex(painel2[0] - 500 + xPos, y + 60);
    curveVertex(painel2[1] - 440 + xPos, y + 70);
    curveVertex(painel2[2] - 400 + xPos, y + 70); 
    curveVertex(painel2[3] - 350 + xPos, y + 70);
    curveVertex(painel2[4] - 300 + xPos, y + 60);
    curveVertex(painel2[5] - 250 + xPos, y + 70); 
    curveVertex(painel2[6] - 200 + xPos, y + 70); 
    curveVertex(painel2[7] - 150 + xPos, y + 70); 
    curveVertex(painel2[8] - 100 + xPos, y + 60); 
    curveVertex(painel2[9] * 0 + xPos, y + 70); 
    curveVertex(painel2[10] + 190 + xPos, y + 60);
    curveVertex(painel2[11] + 200 + xPos, y - 10); //árvore »
    curveVertex(painel2[12] + 195 + xPos, y - 60);
    curveVertex(painel2[13] + 200 + xPos, y - 110);
    curveVertex(painel2[13] + 205 + xPos, y - 160);
    curveVertex(painel2[13] + 200 + xPos, y - 210);
    curveVertex(painel2[13] + 195 + xPos, y - 260);
    curveVertex(painel2[13] + 200 + xPos, y - 310);
    curveVertex(painel2[13] + 205 + xPos, y - 360);
    curveVertex(painel2[14] + 250 + xPos, y - 360);
    curveVertex(painel2[15] + 255 + xPos, y - 310);
    curveVertex(painel2[15] + 250 + xPos, y - 260);
    curveVertex(painel2[15] + 245 + xPos, y - 210);
    curveVertex(painel2[15] + 250 + xPos, y - 160);
    curveVertex(painel2[15] + 255 + xPos, y - 110);
    curveVertex(painel2[15] + 250 + xPos, y - 60); //« árvore
    curveVertex(painel2[15] + 245 + xPos, y - 10);
    curveVertex(painel2[16] + 300 + xPos, y + 70); 
    curveVertex(painel2[17] + 350 + xPos, y + 70); 
    curveVertex(painel2[18] + 400 + xPos, y + 60); 
    curveVertex(painel2[19] + 450 + xPos, y + 70); 
    curveVertex(painel2[20] + 500 + xPos, y + 70); 
    curveVertex(painel2[21] + 550 + xPos, y + 70); 
    curveVertex(painel2[22] + 600 + xPos, y + 60);  
    curveVertex(painel2[23] + 610 + xPos, y - 60); //árvore »
    curveVertex(painel2[23] + 605 + xPos, y - 110);
    curveVertex(painel2[23] + 600 + xPos, y - 160);
    curveVertex(painel2[23] + 595 + xPos, y - 210);
    curveVertex(painel2[23] + 600 + xPos, y - 260);
    curveVertex(painel2[24] + 605 + xPos, y - 310);
    curveVertex(painel2[24] + 600 + xPos, y - 360);
    curveVertex(painel2[25] + 655 + xPos, y - 360);
    curveVertex(painel2[26] + 660 + xPos, y - 310);
    curveVertex(painel2[26] + 655 + xPos, y - 260);
    curveVertex(painel2[26] + 650 + xPos, y - 210);
    curveVertex(painel2[26] + 645 + xPos, y - 160);
    curveVertex(painel2[26] + 650 + xPos, y - 110);
    curveVertex(painel2[27] + 655 + xPos, y - 60); //« árvore
    curveVertex(painel2[28] + 700 + xPos, y + 70); 
    curveVertex(painel2[29] + 750 + xPos, y + 70); 
    curveVertex(painel2[30] + 800 + xPos, y + 60); 
    curveVertex(painel2[31] + 850 + xPos, y + 70); 
    curveVertex(painel2[32] + 900 + xPos, y + 70); 
    curveVertex(painel2[33] + 950 + xPos, y + 60); 
    curveVertex(painel2[34] + 1000 + xPos, y + 70); 
    curveVertex(painel2[35] + 1050 + xPos, y + 70);  
    curveVertex(painel2[36] + 1500 + xPos, y + 70);  
    curveVertex(painel2[37] + 1500 + xPos, y + 800);
    curveVertex(painel2[38] - 500 + xPos, y + 800);
    curveVertex(painel2[39] - 500 + xPos, y + 50);
  endShape();
  
  beginShape(); // definir painel 3
    curveVertex(painel3[0] - 500 + xPos, y + 200);
    curveVertex(painel3[1] - 440 + xPos, y + 200);
    curveVertex(painel3[2] - 400 + xPos, y + 210); 
    curveVertex(painel3[3] - 350 + xPos, y + 210); 
    curveVertex(painel3[4] - 300 + xPos, y + 180); 
    curveVertex(painel3[5] - 250 + xPos, y + 210); 
    curveVertex(painel3[6] - 200 + xPos, y + 210); 
    curveVertex(painel3[7] - 150 + xPos, y + 210); 
    curveVertex(painel3[8] - 100 + xPos, y + 180);  
    curveVertex(painel3[9] * 0 + xPos, y + 180); //árvore »
    curveVertex(painel3[10] + 5 + xPos, y + 130);
    curveVertex(painel3[11] * 0 + xPos, y - 20);
    curveVertex(painel3[12] + 5 + xPos, y - 70);
    curveVertex(painel3[12] + 10 + xPos, y - 120);
    curveVertex(painel3[12] + 5 + xPos, y - 170);
    curveVertex(painel3[12] * 0 + xPos, y - 220);
    curveVertex(painel3[12] + 5 + xPos, y - 270);
    curveVertex(painel3[12] + 10 + xPos, y - 320);
    curveVertex(painel3[12] + 5 + xPos, y - 370);
    curveVertex(painel3[13] + 50 + xPos, y - 370);
    curveVertex(painel3[13] + 55 + xPos, y - 320);
    curveVertex(painel3[13] + 50 + xPos, y - 270);
    curveVertex(painel3[14] + 55 + xPos, y - 220);
    curveVertex(painel3[14] + 50 + xPos, y - 170);
    curveVertex(painel3[14] + 45 + xPos, y - 120);
    curveVertex(painel3[14] + 50 + xPos, y - 70);
    curveVertex(painel3[14] + 55 + xPos, y - 20);
    curveVertex(painel3[14] + 50 + xPos, y + 130);
    curveVertex(painel3[14] + 45 + xPos, y + 180); //« árvore
    curveVertex(painel3[15] + 150 + xPos, y + 180); 
    curveVertex(painel3[16] + 200 + xPos, y + 180); 
    curveVertex(painel3[17] + 250 + xPos, y + 150); 
    curveVertex(painel3[18] + 300 + xPos, y + 180); 
    curveVertex(painel3[19] + 350 + xPos, y + 170); 
    curveVertex(painel3[20] + 400 + xPos, y + 180); 
    curveVertex(painel3[21] + 450 + xPos, y + 150);  
    curveVertex(painel3[22] + 440 + xPos, y - 70); //árvore »
    curveVertex(painel3[22] + 445 + xPos, y - 120);
    curveVertex(painel3[22] + 450 + xPos, y - 170);
    curveVertex(painel3[22] + 445 + xPos, y - 220);
    curveVertex(painel3[22] + 450 + xPos, y - 270);
    curveVertex(painel3[23] + 445 + xPos, y - 320);
    curveVertex(painel3[23] + 440 + xPos, y - 370);
    curveVertex(painel3[24] + 480 + xPos, y - 370);
    curveVertex(painel3[25] + 485 + xPos, y - 320);
    curveVertex(painel3[25] + 490 + xPos, y - 270);
    curveVertex(painel3[25] + 495 + xPos, y - 220);
    curveVertex(painel3[25] + 490 + xPos, y - 170);
    curveVertex(painel3[25] + 485 + xPos, y - 120);
    curveVertex(painel3[26] + 490 + xPos, y - 10); //« árvore
    curveVertex(painel3[27] + 530 + xPos, y + 180); 
    curveVertex(painel3[28] + 610 + xPos, y + 150); 
    curveVertex(painel3[29] + 660 + xPos, y + 160); 
    curveVertex(painel3[30] + 710 + xPos, y + 130); 
    curveVertex(painel3[31] + 760 + xPos, y + 150); 
    curveVertex(painel3[32] + 810 + xPos, y + 180); 
    curveVertex(painel3[33] + 860 + xPos, y - 70); 
    curveVertex(painel3[34] + 875 + xPos, y - 120); //árvore »    
    curveVertex(painel3[35] + 870 + xPos, y - 170);
    curveVertex(painel3[35] + 875 + xPos, y - 220);
    curveVertex(painel3[35] + 880 + xPos, y - 270);
    curveVertex(painel3[35] + 885 + xPos, y - 320);
    curveVertex(painel3[36] + 880 + xPos, y - 370);
    curveVertex(painel3[37] + 930 + xPos, y - 370);
    curveVertex(painel3[38] + 935 + xPos, y - 320);
    curveVertex(painel3[38] + 940 + xPos, y - 270);
    curveVertex(painel3[38] + 935 + xPos, y - 220);
    curveVertex(painel3[38] + 930 + xPos, y - 170);
    curveVertex(painel3[38] + 935 + xPos, y - 120);
    curveVertex(painel3[38] + 940 + xPos, y + 30);
    curveVertex(painel3[39] + 935 + xPos, y + 170); //« árvore
    curveVertex(painel3[40] + 1050 + xPos, y + 250);
    curveVertex(painel3[41] + 1500 + xPos, y + 250);
    curveVertex(painel3[42] + 1500 + xPos, y + 800);
    curveVertex(painel3[43] - 500 + xPos, y + 800);
    curveVertex(painel3[44] - 500 + xPos, y + 200);
  endShape();
  
  
  beginShape(); // definir painel 4
    curveVertex(painel4[0] - 500 + xPos, y + 300);
    curveVertex(painel4[1] - 440 + xPos, y + 300);
    curveVertex(painel4[2] - 400 + xPos, y + 310); 
    curveVertex(painel4[3] - 350 + xPos, y + 310); 
    curveVertex(painel4[4] - 300 + xPos, y + 350); 
    curveVertex(painel4[5] - 250 + xPos, y + 310); 
    curveVertex(painel4[6] - 200 + xPos, y + 310); 
    curveVertex(painel4[7] - 150 + xPos, y + 310); 
    curveVertex(painel4[8] - 100 + xPos, y + 330);  
    curveVertex(painel4[9] * 0 + xPos, y + 350);
    curveVertex(painel4[10] + 50 + xPos, y + 330);
    curveVertex(painel4[11] + 100 + xPos, y + 320);
    curveVertex(painel4[12] + 150 + xPos, y + 310);
    curveVertex(painel4[13] + 200 + xPos, y + 300);
    curveVertex(painel4[14] + 250 + xPos, y + 330);
    curveVertex(painel4[15] + 300 + xPos, y + 320);
    curveVertex(painel4[16] + 310 + xPos, y + 200); //árvore »
    curveVertex(painel4[16] + 315 + xPos, y + 120);
    curveVertex(painel4[16] + 310 + xPos, y + 60);
    curveVertex(painel4[16] + 305 + xPos, y - 20);
    curveVertex(painel4[17] + 310 + xPos, y - 100);
    curveVertex(painel4[17] + 315 + xPos, y - 180);
    curveVertex(painel4[18] + 320 + xPos, y - 260);
    curveVertex(painel4[19] + 390 + xPos, y - 260);
    curveVertex(painel4[20] + 395 + xPos, y - 180);
    curveVertex(painel4[21] + 390 + xPos, y - 100);
    curveVertex(painel4[21] + 385 + xPos, y - 20);
    curveVertex(painel4[21] + 380 + xPos, y + 60);
    curveVertex(painel4[21] + 385 + xPos, y + 120);
    curveVertex(painel4[21] + 380 + xPos, y + 280); 
    curveVertex(painel4[22] + 375 + xPos, y + 320); //« árvore
    curveVertex(painel4[23] + 400 + xPos, y + 300); 
    curveVertex(painel4[24] + 450 + xPos, y + 320); 
    curveVertex(painel4[25] + 500 + xPos, y + 330); 
    curveVertex(painel4[26] + 550 + xPos, y + 310); 
    curveVertex(painel4[27] + 600 + xPos, y + 300); 
    curveVertex(painel4[28] + 650 + xPos, y + 320);     
    curveVertex(painel4[29] + 700 + xPos, y + 330);
    curveVertex(painel4[30] + 750 + xPos, y + 300);
    curveVertex(painel4[31] + 760 + xPos, y + 200); //árvore »
    curveVertex(painel4[32] + 755 + xPos, y + 120);
    curveVertex(painel4[32] + 750 + xPos, y + 60);
    curveVertex(painel4[32] + 745 + xPos, y - 20);
    curveVertex(painel4[32] + 750 + xPos, y - 100);
    curveVertex(painel4[32] + 755 + xPos, y - 180);
    curveVertex(painel4[32] + 750 + xPos, y - 260);
    curveVertex(painel4[32] + 800 + xPos, y - 260);
    curveVertex(painel4[34] + 805 + xPos, y - 180);
    curveVertex(painel4[34] + 810 + xPos, y - 100);
    curveVertex(painel4[35] + 800 + xPos, y - 20);
    curveVertex(painel4[35] + 805 + xPos, y + 60);
    curveVertex(painel4[35] + 800 + xPos, y + 120);
    curveVertex(painel4[36] + 805 + xPos, y + 200); //« árvore
    curveVertex(painel4[37] + 820 + xPos, y + 300);
    curveVertex(painel4[38] + 870 + xPos, y + 310);
    curveVertex(painel4[39] + 920 + xPos, y + 300);
    curveVertex(painel4[40] + 970 + xPos, y + 320);
    curveVertex(painel4[41] + 1010 + xPos, y + 300);
    curveVertex(painel4[42] + 1050 + xPos, y + 310);
    curveVertex(painel4[43] + 1500 + xPos, y + 310);
    curveVertex(painel4[44] + 1500 + xPos, y + 800);
    curveVertex(painel4[45] - 500 + xPos, y + 800);
    curveVertex(painel4[46] - 500 + xPos, y + 300);
  endShape();
  
  beginShape(); // definir painel 5
    curveVertex(painel4[0] - 500 + xPos, y + 500);
    curveVertex(painel4[1] - 440 + xPos, y + 500);
    curveVertex(painel4[2] - 400 + xPos, y + 510); 
    curveVertex(painel4[3] - 350 + xPos, y + 510); 
    curveVertex(painel4[4] - 300 + xPos, y + 550); 
    curveVertex(painel4[5] - 250 + xPos, y + 510); 
    curveVertex(painel4[6] - 200 + xPos, y + 510); 
    curveVertex(painel4[7] - 150 + xPos, y + 510); 
    curveVertex(painel4[8] - 100 + xPos, y + 530);  
    curveVertex(painel4[9] * 0 + xPos, y + 540);
    curveVertex(painel4[10] + 50 + xPos, y + 530);
    curveVertex(painel4[11] + 100 + xPos, y + 520);
    curveVertex(painel4[12] + 150 + xPos, y + 510);
    curveVertex(painel4[13] + 200 + xPos, y + 500);
    curveVertex(painel4[14] + 250 + xPos, y + 530);
    curveVertex(painel4[15] + 300 + xPos, y + 520);
    curveVertex(painel4[16] + 350 + xPos, y + 500);
    curveVertex(painel4[16] + 400 + xPos, y + 520);
    curveVertex(painel4[16] + 450 + xPos, y + 510);
    curveVertex(painel4[16] + 500 + xPos, y + 500);
    curveVertex(painel4[17] + 550 + xPos, y + 510);
    curveVertex(painel4[17] + 600 + xPos, y + 520);
    curveVertex(painel4[18] + 650 + xPos, y + 530);
    curveVertex(painel4[19] + 700 + xPos, y + 520);
    curveVertex(painel4[20] + 750 + xPos, y + 500);
    curveVertex(painel4[21] + 800 + xPos, y + 510);
    curveVertex(painel4[21] + 850 + xPos, y + 500);
    curveVertex(painel4[21] + 900 + xPos, y + 510);
    curveVertex(painel4[21] + 950 + xPos, y + 520);
    curveVertex(painel4[21] + 1000 + xPos, y + 530); 
    curveVertex(painel4[41] + 1010 + xPos, y + 510);
    curveVertex(painel4[42] + 1050 + xPos, y + 510);
    curveVertex(painel4[42] + 1500 + xPos, y + 510);
    curveVertex(painel4[43] + 1500 + xPos, y + 800);
    curveVertex(painel4[44] - 500 + xPos, y + 800);
    curveVertex(painel4[45] - 500 + xPos, y + 300);
  endShape();
  
  image(animal, xi + xPos, yi, wi, hi); //Determina a imagem, posição e medidas da mesma
  
} 

void mousePressed() 
{
  if (mouseX >= xi + xPos && mouseX <= xi + xPos + wi && mouseY >= yi && mouseY <= yi + hi)  // Mudança do animal e da sua posição quando o botão esquerdo do rato é precionado sobre a imagem
  {
    int index = int(random(animais.length)); //Lugar em que a imagem está situada
    animal = animais[index]; //Indica qual imagem vai ser desenhada
    xi = int(random(-20, 1050)); //Define a sua posição aleatóriamente em relação a x
    yi = int(random(height - 600, height - 100)); //Define a sua posição aleatóriamente em relação a y
    
    h = (int)random(100); //mudança da tonalidade
  
    for (int i = 0; i < 50; i++)
      painel1[i] = (int) random(0, 15); //Mudança das curvas do solo e árvores do painel 1
  
    for (int i = 0; i < 50; i++)
      painel2[i] = (int) random(0, 15); //Mudança das curvas do solo e árvores do painel 2
  
    for (int i = 0; i < 50; i++)
      painel3[i] = (int) random(0, 15); //Mudança das curvas do solo e árvores do painel 3
  
    for (int i = 0; i < 50; i++)
      painel4[i] = (int) random(0, 15); //Mudança das curvas do solo e árvores do painel 4
  
    for (int i = 0; i < 50; i++)
      painel5[i] = (int) random(0, 15); //Mudança das curvas do solo e árvores do painel 5
    
    redraw(); //Refaz o desenho do fundo e do animal
  }
}

void  keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == RIGHT && xPos < 81) //Movimento do background e do animal para a direita
      xPos = xPos + 10;
    else if (keyCode == LEFT && xPos > -79) //Movimento do background e do animal para a esquerda
      xPos = xPos - 10;
  }  
}
