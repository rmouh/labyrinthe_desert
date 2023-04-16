
void createLab(int size, int z){
 
  float wallW = width/LAB_SIZE;
  float wallH = height/LAB_SIZE;
    for (int j=0; j<size; j++) {
      for (int i=0; i<size; i++) {
        if (labyrinthe[z/100][j][i]=='#') {
          laby0.fill(i*25, j*25, 255-i*10+j*10);
         //laby0.fill(32+z/2, 255-z/3, 45*z);
        if (j==0 || labyrinthe[z/100][j-1][i]==' ') {
          laby0.normal(0, -1, 0);
          for (int k=0; k<WALLD; k++)
            for (int l=-WALLD; l<WALLD; l++) {
              laby0.vertex(i*wallW-wallW/2+(k+0)*wallW/WALLD, j*wallH-wallH/2, (l+0)*50/WALLD, k/(float)WALLD*texture0.width, (0.5+l/2.0/WALLD)*texture0.height);
              laby0.vertex(i*wallW-wallW/2+(k+1)*wallW/WALLD, j*wallH-wallH/2, (l+0)*50/WALLD, (k+1)/(float)WALLD*texture0.width, (0.5+l/2.0/WALLD)*texture0.height);
              laby0.vertex(i*wallW-wallW/2+(k+1)*wallW/WALLD, j*wallH-wallH/2, (l+1)*50/WALLD, (k+1)/(float)WALLD*texture0.width, (0.5+(l+1)/2.0/WALLD)*texture0.height);
              laby0.vertex(i*wallW-wallW/2+(k+0)*wallW/WALLD, j*wallH-wallH/2, (l+1)*50/WALLD, k/(float)WALLD*texture0.width, (0.5+(l+1)/2.0/WALLD)*texture0.height);
            }
        }
//lower
        if (j==size-1 || labyrinthe[z/100][j+1][i]==' ') {
          laby0.normal(0, 1, 0);
          for (int k=0; k<WALLD; k++)
            for (int l=-WALLD; l<WALLD; l++) {
              laby0.vertex(i*wallW-wallW/2+(k+0)*wallW/WALLD, j*wallH+wallH/2, (l+1)*50/WALLD, (k+0)/(float)WALLD*texture0.width, (0.5+(l+1)/2.0/WALLD)*texture0.height);
              laby0.vertex(i*wallW-wallW/2+(k+1)*wallW/WALLD, j*wallH+wallH/2, (l+1)*50/WALLD, (k+1)/(float)WALLD*texture0.width, (0.5+(l+1)/2.0/WALLD)*texture0.height);
              laby0.vertex(i*wallW-wallW/2+(k+1)*wallW/WALLD, j*wallH+wallH/2, (l+0)*50/WALLD, (k+1)/(float)WALLD*texture0.width, (0.5+(l+0)/2.0/WALLD)*texture0.height);
              laby0.vertex(i*wallW-wallW/2+(k+0)*wallW/WALLD, j*wallH+wallH/2, (l+0)*50/WALLD, (k+0)/(float)WALLD*texture0.width, (0.5+(l+0)/2.0/WALLD)*texture0.height);
            }
        }
//right walls
        if (i==0 || labyrinthe[z/100][j][i-1]==' ') {
          laby0.normal(-1, 0, 0);
          for (int k=0; k<1; k++)
            for (int l=-WALLD; l<WALLD; l++) {
             laby0.vertex(i*wallW-wallW/2, j*wallH-wallH/2+(k+0)*wallW/WALLD, (l+1)*50/WALLD, (k+0)/(float)WALLD*texture0.width, (0.5+(l+1)/2.0/WALLD)*texture0.height);
              laby0.vertex(i*wallW-wallW/2, j*wallH-wallH/2+(k+1)*wallW/WALLD, (l+1)*50/WALLD, (k+1)/(float)WALLD*texture0.width, (0.5+(l+1)/2.0/WALLD)*texture0.height);
              laby0.vertex(i*wallW-wallW/2, j*wallH-wallH/2+(k+1)*wallW/WALLD, (l+0)*50/WALLD, (k+1)/(float)WALLD*texture0.width, (0.5+(l+0)/2.0/WALLD)*texture0.height);
              laby0.vertex(i*wallW-wallW/2, j*wallH-wallH/2+(k+0)*wallW/WALLD, (l+0)*50/WALLD, (k+0)/(float)WALLD*texture0.width, (0.5+(l+0)/2.0/WALLD)*texture0.height);
            }
        }
//left
        if (i==size-1 || labyrinthe[z/100][j][i+1]==' ') {
          laby0.normal(1, 0, 0);
          for (int k=0; k<1; k++)
            for (int l=-WALLD; l<WALLD; l++) {
              laby0.vertex(i*wallW+wallW/2, j*wallH-wallH/2+(k+0)*wallW/WALLD, (l+0)*50/WALLD, (k+0)/(float)WALLD*texture0.width, (0.5+(l+0)/2.0/WALLD)*texture0.height);
              laby0.vertex(i*wallW+wallW/2, j*wallH-wallH/2+(k+1)*wallW/WALLD, (l+0)*50/WALLD, (k+1)/(float)WALLD*texture0.width, (0.5+(l+0)/2.0/WALLD)*texture0.height);
              laby0.vertex(i*wallW+wallW/2, j*wallH-wallH/2+(k+1)*wallW/WALLD, (l+1)*50/WALLD, (k+1)/(float)WALLD*texture0.width, (0.5+(l+1)/2.0/WALLD)*texture0.height);
              laby0.vertex(i*wallW+wallW/2, j*wallH-wallH/2+(k+0)*wallW/WALLD, (l+1)*50/WALLD, (k+0)/(float)WALLD*texture0.width, (0.5+(l+1)/2.0/WALLD)*texture0.height);
            }
        }
        ceiling1.fill(32, 255, 0);
         
        ceiling1.fill(200);

        ceiling1.vertex(i*wallW-wallW/2, j*wallH-wallH/2, 50, 0, 0);
        ceiling1.vertex(i*wallW+wallW/2, j*wallH-wallH/2, 50, 0, 500);
        ceiling1.vertex(i*wallW+wallW/2, j*wallH+wallH/2,50, 500,500);
        ceiling1.vertex(i*wallW-wallW/2, j*wallH+wallH/2, 50, 500,0);        
      } 
//      //else si ce n est pas un mur
      else {
        grd.texture(ground);
        
        grd.fill(0); // ground
        grd.vertex(i*wallW-wallW/2, j*wallH-wallH/2, -50, 0, 0);
        grd.vertex(i*wallW+wallW/2, j*wallH-wallH/2, -50, 0, 500);
        grd.vertex(i*wallW+wallW/2, j*wallH+wallH/2, -50, 500,500);
        grd.vertex(i*wallW-wallW/2, j*wallH+wallH/2, -50, 500,0);
        grd.texture(ground);
        
          ceiling0.beginShape(QUADS); // begin new shape for each ceiling
          ceiling0.fill(10); // top of walls
          ceiling0.vertex(i*wallW-wallW/2, j*wallH-wallH/2, 50);
          ceiling0.vertex(i*wallW+wallW/2, j*wallH-wallH/2, 50);
          ceiling0.vertex(i*wallW+wallW/2, j*wallH+wallH/2, 50);
          ceiling0.vertex(i*wallW-wallW/2, j*wallH+wallH/2, 50);
          ceiling0.endShape(); // end shape for each ceiling
          
        }
      }
    }
  
}
 
//dispaly the pyramid and walls if the player is out side 
void emempileLab(){
  ceiling0 = createShape();
  ceiling1 = createShape();
  ceiling1.beginShape(QUADS);
  ceiling0.beginShape(QUADS);
  laby0 = createShape();
  laby0.beginShape(QUADS);
  laby0.texture(texture0);
  laby0.noStroke();
  int size = 21;
  for (int z=0; z <PYR_SIZE; z++){
    createLab(size, z*90);
    size= size-4;
    }

   laby0.endShape();
   ceiling0.endShape();
   ceiling1.endShape();

}
void empPyr(){
  ceiling0 = createShape();
  ceiling1 = createShape();
  ceiling1.beginShape(QUADS);
  ceiling0.beginShape(QUADS);
  laby0 = createShape();
  laby0.beginShape(QUADS);
  laby0.texture(texture0);
  laby0.noStroke();
  int size = 29;
  for (int z=0; z <=609; z+=47){
   pushMatrix();
   createPyr(size , z, z);
   popMatrix();
    size= size-2;
    
}
//createHeadPyr(size);

 laby0.endShape();
 ceiling0.endShape();
  ceiling1.endShape();
}
void printMap(int level)
{
  
  float wallW = width/LAB_SIZE;
  float wallH = height/LAB_SIZE;
    for (int j=0; j<LAB_SIZE; j++) {
    for (int i=0; i<LAB_SIZE; i++) {
      if (labyrinthe[level][j][i]=='#') {
        fill(i*25, j*25, 255-i*10+j*10);
        pushMatrix();
        translate(50+i*wallW/8, 50+j*wallH/8, 50);
        translate(79,width,0);
        box(wallW/10, wallH/10, 5);
        popMatrix();
      }
    }
  }
}

// print only one level will be called if the player is in the pyr 
void printLevel(int l){
    printMap(l);
  grd = createShape();
  grd.beginShape(QUADS);
  grd.texture(ground);
  grd.noStroke();
  ceiling0 = createShape();
  ceiling1 = createShape();
  ceiling1.beginShape(QUADS);
  ceiling0.beginShape(QUADS);
  laby0 = createShape();
  laby0.beginShape(QUADS);
  laby0.texture(texture0);
  laby0.noStroke();
  createLab(21-(l*4), l*100);
  laby0.endShape();
  grd.endShape();
  ceiling0.endShape();
  ceiling1.endShape();
}
void createPyr(int size, int z, float h) {
  //z=z/2;
  int t = z;
  int p = z;
  tint(188, 187, 136);
  float wallW = width/LAB_SIZE;
  float wallH = height/LAB_SIZE;
  
  // mur face +losange

  
  beginShape(QUADS);
  texture(texture1);
  vertex(0+p, size*wallW+t, 0+z-50, 0, 0);
  vertex(size*wallW+p, size*wallW+t, 0+z-50, 0, 910);
  vertex(size*wallW+p, size*wallW+t, 47+z*2, 35, 910);
  vertex(0+p, size*wallW+t, 47+z*2, 35, 0);
  endShape();
  
  beginShape(QUADS);
  texture(texture1);
  vertex(0+p, size*wallW+t, 47+z, 0, 0);
  vertex(size*wallW+p, size*wallW+t, 47+z, 0, 910);
  vertex(size*wallW+p-90, size*wallW+t-90, 47+z, 35, (910-35));
  vertex(0+p+90, size*wallW+t-90, 47+z, 35, 35);
  
  endShape();


 // mur gauche+ losange
  beginShape(QUADS);
  texture(texture1);
  vertex(p, t, z-50,0, 0);
  vertex(p, size*wallW+t,0+z-50,0, 910);
  vertex(p, size*wallW+t,47+z*2, 35, 910);
  vertex(p, t,47+z*2,35, 0);
  endShape();
  beginShape(QUADS);
  texture(texture1);
  vertex(0+p, size*wallW+t,47+z, 0, 0);
  vertex(0+p, 0+t,47+z, 0, 910);
  vertex(0+p+90, 0+t+90,47+z, 35, (910-35));
  vertex(0+p+90, size*wallW+t-90,47+z, 35, 35);
  endShape();

   //mur arrier + losange
  beginShape(QUADS);
  texture(texture1);
  vertex(p, 0+t, z-50,0, 0);
  vertex(size*wallW+p, 0+t,z-50,0, 910);

  vertex(size*wallW+p, 0+t,47+z*2, 35, 910);
  vertex(0+p, 0+t,47+z*2,35, 0);
  endShape();
  beginShape(QUADS);
  texture(texture1);
  vertex(size*wallW+p, 0+t,47+z, 0, 0);
  vertex(0+p, 0+t,47+t, 0, 910);
  vertex(0+p+90, 0+t+90,47+z, 35, (910-35));
  vertex(size*wallW+p-90,t+90,47+z, 35, 35);
  endShape();

  //mur droite + losange
  beginShape(QUADS);
  texture(texture1);
  vertex(size*wallW+p, 0+t,0+z-50,0, 0);
  vertex(size*wallW+p, size*wallW+t,0+z-50,0, 910);
  vertex(size*wallW+p, size*wallW+t,47+z*2, 35, 910);
  vertex(size*wallH+p, 0+t,47+z*2,35, 0);
  endShape();
  beginShape(QUADS);
  texture(texture1);
  vertex(size*wallH+p, size*wallH+t,47+z, 0, 0);
  vertex(size*wallH+p, 0+t,47+z, 0, 910);
  vertex(size*wallH+p-90, 0+t+90,47+z, 35, (910-35));
  vertex(size*wallH+p-90, size*wallH+t-90,47+z, 35, 35);
  

  endShape();
  
 

}

// print the little map up left 

boolean isInLab(int dirX, int diry){
  if (posY<=-1||posX<=-1|| posY>=LAB_SIZE||posX>=LAB_SIZE)
   { 
      return (false);}
     else if (level!=0)
     return (true);
   else {
   return (posX+odirX>=0 && posX+odirX<21 && posY+odirY>=0 && posY+odirY<21);}
  }
  
