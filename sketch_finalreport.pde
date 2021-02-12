float baseH1 = 100;
float baseH2 = 100;
float armL1 = 40;
float armL2 = 40;
float armL3 = 40;
float armL4 = 20;
float armL5 = 20;
float armW1 = 10;
float armW2 = 10;
float armW3 = 10;
float armW4 = 5;
float armW5 = 5;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float move0 = 0;
float move1 = 0;
float dif = 1.0;


void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(200, 200, 200, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == '1'){
      move0 = move0 + dif;
    }
    if(key == '!'){
      move0 = move0 - dif;
    }
     if(key == '2'){
      angle0 = angle0 + dif/2;
    }
    if(key == '"'){
      angle0 = angle0 - dif/2;
    }
    if(key == '3'){
      angle1 = angle1 + dif;
    }
    if(key == '#'){
      angle1 = angle1 - dif;
    }
    if(key == '4'){
      angle2 = angle2 + dif;
    }
    if(key == '$'){
      angle2 = angle2 - dif;
    }
    if(key == '5'){
      angle3 = angle3 + dif;
    }
    if(key == '%'){
      angle3 = angle3 - dif;
    }
     if(key == '6'){
      angle4 = angle4 + dif;
    }
    if(key == '&'){
      angle4 = angle4 - dif;
    }
    if(key == 'c'){
      move1 = move1 + dif/10;
    }
    if(key == 'r'){
      move1 = move1 - dif/10;
    }
  }
  
  //base
  rotateZ(radians(angle0));
  translate(0,0,baseH2/2);
  fill(0);
  box(20,20,baseH1);
  translate(0,0,move0/2);
  box(10,10,baseH2);
  
  //1st link
  rotateZ(radians(angle1));
  translate(0,armL1/2-armW1/2,baseH2/2+armW1/2);
  fill(150);
  box(armW1,armL1,armW1);
  
  //2nd link
  //go to 2nd joint
  translate(armW2,armL1/2-armW1/2,0);
  rotateX(radians(angle2));  
  //go to center of 2nd joint
  translate(0,armL2/2-armW2/2,0);
  fill(125);
  box(armW2,armL2,armW2);
  
  //3rd link
  translate(-armW2,armL2/2-armW2/2,0);
  rotateX(radians(angle3));
  translate(0,armL3/2+-armW2/2,0);
  fill(100);
  box(armW3,armL3,armW3);
  
  //4th link
  translate(0,armL3/2+armW4/2,0);
  rotateY(radians(angle4));
  fill(50);
  box(armL4,armW4,armW4);

  //5th link
  pushMatrix();
  translate(-armL4/2+armW5/2+move1,armW4/2+armL5/2,0);
  fill(0);
  box(armW5,armL5,armW5);
  popMatrix();
  
  translate(armL4/2-armW5/2-move1,armW4/2+armL5/2,0);
  fill(0);
  box(armW5,armL5,armW5);
  
}
