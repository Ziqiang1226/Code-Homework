color color1, color2, color3, color4;
int radius;

void setup(){
  background(255);
  size(1000, 1000);
  color1= color(255, 0, 0);
  color2= color(255, 255, 0);
  color3= color(0, 255, 100);
  color4= color(0, 100, 255);
  
  noStroke();
  fill(color1);
  rect(0, 0, 100, 100);
  fill(color2);
  rect(100, 0, 100, 100);
  fill(color3);
  rect(200, 0, 100, 100);
  fill(color4);
  rect(300, 0, 100, 100);
  
  radius= 10;
}

void draw(){
  if(mousePressed){
    if(mouseX> 0&& mouseX< 100 && mouseY> 0 && mouseY< 100){
      fill(color1);
    }else if(mouseX> 100 && mouseX< 200 && mouseY> 0 && mouseY< 100){
      fill(color2);
    }else if(mouseX> 200 && mouseX< 300 && mouseY> 0 && mouseY< 100){
      fill(color3);
    }else if(mouseX> 300 && mouseX< 400 && mouseY> 0 && mouseY< 100){
      fill(color4);
    }else{
      ellipse(mouseX, mouseY, radius, radius);
    }
  }
  
  if(keyPressed){
    if(key== CODED){
      if(keyCode== UP){
        radius++;
      }else if(keyCode== DOWN){
        radius--;
      }
    }
    
  }
}