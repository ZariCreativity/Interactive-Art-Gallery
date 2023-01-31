//Azaria Dunston
//Jan 31, 2023
//Interactive Art Project

void setup(){
  size(1000, 1000);
  background(255, 255, 255);
  smooth();
}

void draw(){
  fill(0, 0, 0);
  textSize(20);
  text("Click to clear screen \n Press SPACE for white background", 0, 20);
  
  //Change colors
  if (mouseY < height/2){
    fill(200, 100, 100);
    if (mouseX > width/2) {
      fill(100, 200, 100);
    }
  }
  else{
    fill(100, 100, 200);
    if (mouseX < width/2) {
      fill(225, 175, 75);
    }
  }
  
  //change shapes
  if (mouseX < width/2){
    ellipse(mouseX, mouseY, 50, 50);
  }
  else if (mouseX > width/2){
    beginShape();
      vertex(mouseX, mouseY - 25);
      vertex(mouseX + 20, mouseY + 10);
      vertex(mouseX - 20, mouseY + 10);
      vertex(mouseX, mouseY - 25);
     endShape(CLOSE);
  }
  
}

//Changes background color
void mouseClicked(){
  //background(255, 255, 255);
  if (mouseY < height/2){
    background(255, 200, 200);
    if (mouseX > width/2) {
      background(200, 255, 200);
    }
  }
  else{
    background(200, 200, 255);
    if (mouseX < width/2) {
      background(250, 200, 100);
    }
  }
}

//white background
void keyPressed(){
  if(key == ' '){
    background(255, 255, 255);
  }
}
