//For my synaesthetic instrument I have made a piano in which each letter key plays a note, the first c being played by hitting q
//Each note lights up background with a new colour with flats/sharps being white
import processing.sound.*;

Sound s;

Piano piano;

char[] keys = {'q','w','e','r','t','y','u','i','o','p','a','s','d','f','g','h','j','k','l','z','x','c','v','b','n','m'};

void setup() {
  background(0,0,0);
  fullScreen();
  piano = new Piano(0,600,width,height-600);
}

void draw() {
  piano.Draw();
}

void keyTyped() {
  int i = 0;
  noStroke();
  for(i=0; (i<26);i++)
  {
    if(keys[i]==key)
    {
      piano.Play(i);
      if(i == 0){
        fill(255,5,26);
        rect(0,0,90,600);
        
    }
      else if(i == 1){
        fill(255,255,255);
        rect(60,0,60,400);
          
    }
    else if(i == 2){
          fill(255,5,239);
          rect(90,0,90,600);
          
    }
    else if(i == 3){
          fill(255,255,255);
        rect(150,0,60,400);
        
    }
    else if(i == 4){
          fill(108,5,255);
          rect(180,0,90,600);
          
    }
    else if(i == 5){
          fill(5,57,255);
          rect(270,0,90,600);
          
    }
    else if(i == 6){
          fill(255,255,255);
        rect(330,0,60,400);
         
    }
    else if(i == 7){
          fill(5,149,255);
          rect(360,0,90,600);
          
    }
    else if(i == 8){
        
          fill(255,255,255);
        rect(420,0,60,400);
    }
    else if(i == 9){
      fill(5,255,240);
          rect(450,0,90,600);
          
    }
    else if(i == 10){
      fill(255,255,255);
        rect(510,0,60,400);
          
    }
    else if(i == 11){
      fill(5,255,136);
          rect(540,0,90,600);
          
    }
    else if(i == 12){
      fill(50,255,5);
          rect(630,0,90,600);
          
    }
    else if(i == 13){
      fill(255,255,255);
        rect(690,0,60,400);
          
    }
    else if(i == 14){
      fill(221,255,5);
          rect(720,0,90,600);
          
    }
    else if(i == 15){
     fill(255,255,255);
        rect(780,0,60,400);
          
    }
    else if(i == 16){
      fill(255,201,5);
          rect(810,0,90,600);
          
    }
    else if(i == 17){
      fill(255,105,5);
          rect(900,0,90,600);
          
    }
    else if(i == 18){
     fill(255,255,255);
        rect(960,0,60,400);
          
    }
    else if(i == 19){
      fill(255,5,5);
          rect(990,0,90,600);
          
    }
    else if(i == 20){
      fill(255,255,255);
        rect(1050,0,60,400);
          
    }
    else if(i == 21){
      fill(242,5,255);
          rect(1080,0,90,600);
          
    }
    else if(i == 22){
      fill(255,255,255);
          rect(1140,0,60,400);
          
    }
    else if(i == 23){
      fill(83,5,255);
          rect(1170,0,90,600);
          
    }
    else if(i == 24){
      fill(5,207,255);
          rect(1260,0,90,600);
          
    }
    else if(i == 25){
      fill(255,255,255);
          rect(1330,0,60,400);
          
    }
    }
  }
  
}

void keyReleased() {
  int i = 0;
  
  for(i=0; (i<26);i++)
  {
    if(keys[i]==key)
    {
      
      piano.Stop(i);
      if(i == 0){
        fill(0,0,0);
        rect(0,0,90,600);
        
    }
      else if(i == 1){
        fill(0,0,0);
        rect(60,0,60,400);
          
    }
    else if(i == 2){
          fill(0,0,0);
          rect(90,0,90,600);
          
    }
    else if(i == 3){
          fill(0,0,0);
        rect(150,0,60,400);
        
    }
    else if(i == 4){
          fill(0,0,0);
          rect(180,0,90,600);
          
    }
    else if(i == 5){
          fill(0,0,0);
          rect(270,0,90,600);
          
    }
    else if(i == 6){
          fill(0,0,0);
        rect(330,0,60,400);
         
    }
    else if(i == 7){
          fill(0,0,0);
          rect(360,0,90,600);
          
    }
    else if(i == 8){
        
          fill(0,0,0);
        rect(420,0,60,400);
    }
    else if(i == 9){
      fill(0,0,0);
          rect(450,0,90,600);
          
    }
    else if(i == 10){
      fill(0,0,0);
        rect(510,0,60,400);
          
    }
    else if(i == 11){
      fill(0,0,0);
          rect(540,0,90,600);
          
    }
    else if(i == 12){
      fill(0,0,0);
          rect(630,0,90,600);
          
    }
    else if(i == 13){
      fill(0,0,0);
        rect(690,0,60,400);
          
    }
    else if(i == 14){
      fill(0,0,0);
          rect(720,0,90,600);
          
    }
    else if(i == 15){
     fill(0,0,0);
        rect(780,0,60,400);
          
    }
    else if(i == 16){
      fill(0,0,0);
          rect(810,0,90,600);
          
    }
    else if(i == 17){
      fill(0,0,0);
          rect(900,0,90,600);
          
    }
    else if(i == 18){
     fill(0,0,0);
        rect(960,0,60,400);
          
    }
    else if(i == 19){
      fill(0,0,0);
          rect(990,0,90,600);
          
    }
    else if(i == 20){
      fill(0,0,0);
        rect(1050,0,60,400);
          
    }
    else if(i == 21){
      fill(0,0,0);
          rect(1080,0,90,600);
          
    }
    else if(i == 22){
      fill(0,0,0);
          rect(1140,0,60,400);
          
    }
    else if(i == 23){
      fill(0,0,0);
          rect(1170,0,90,600);
          
    }
    else if(i == 24){
      fill(0,0,0);
          rect(1260,0,90,600);
          
    }
    else if(i == 25){
      fill(0,0,0);
          rect(1330,0,60,400);
          
    }
    }
  }
} //<>//
