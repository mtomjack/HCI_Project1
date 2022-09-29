

//3) timer for the floors so that they clear 



 int color1 = 255;
 int color2 = 255 ;
 int color3 = 255 ;
 int color4 = 255 ;
 int color5 = #A51205;
 int color6 = #A51205 ;
 int color7 = #A51205 ;
 
 float delay = 1;
 
 boolean colorr = false;
 color boxcolor, currentColor;
 
 boolean colorr2 = false;
 color boxcolor2, currentColor2;
 
 boolean colorr3 = false;
 color boxcolor3, currentColor3;

int time;
int wait = 5000;

int time1;
int wait1 = 5000;


void setup(){
size(750, 750);
background(87);
time = millis();
time1 = millis();
}
//bottom buttons (open and close door) ( only will light up when clicked will not stay clicked)
void draw(){

fill(color1);
if(mousePressed){
  if(mouseX>125&& mouseX <175 && mouseY>600 && mouseY <650){
   fill(#FFE44B); 
  }
 } 
rect(125, 600, 50, 50);

fill(color2);
if(mousePressed){
  if(mouseX>575&& mouseX <625 && mouseY>600 && mouseY <650){
   fill(#FFE44B);
  }
 } 
rect(575, 600, 50, 50);

//symbols on the leftmost button
line(130,625, 150,600);
line(130,625, 150,650);
line(150,600, 150, 650);
line(170, 625, 150, 600);
line(170,625, 150, 650);
fill(255);
textSize(12);
text("Door Open", 123, 665);

fill(255);
//symbols on the rightmost button
line(575, 600, 597, 625);
line(597, 625, 575, 650);
line(600, 600, 600, 650);
line(625, 600, 603, 625);
line(603, 625, 625,650);
fill(255);
textSize(12);
text("Door close", 573, 665);

strokeWeight(1);
//floor buttons (pick 1 or 2 floor) (will stay light up when clicked until it reaches its location)
fill(color3);
    if (millis() - time>= wait){
      color3 = 255;
      time = millis();
    }
rect(350, 400, 50, 50);
fill(color4);
if (millis() - time1>= wait1){
      color4 = 255;
      time1 = millis();
    }
rect(350, 500, 50, 50);

fill(5);
textSize(50);
text("1", 363, 540);

fill(5);
textSize(50);
text("2", 363, 440);

if(colorr){
        currentColor = color(255,0,0);
    }else{
        currentColor = color(127,0,0);
    }
fill(currentColor);
rect(125, 250, 50, 50);
if(colorr2){
        currentColor2 = color(255,0,0);
    }else{
        currentColor2 = color(127,0,0);
    }
fill(currentColor2);
rect(350, 250, 50, 50);
if(colorr3){
        currentColor3 = color(255,0,0);
    }else{
        currentColor3 = color(127,0,0);
    }
fill(currentColor3);
rect(575, 250, 50, 50);

fill(255);
textSize(12);
text("Call Operator", 117, 315);
fill(255);
textSize(20);
text("CALL", 130, 280);

fill(255);
textSize(12);
text("Emergency Stop", 335, 315);
fill(255);
textSize(20);
text("STOP", 353, 280);

fill(255);
textSize(12);
text("Fire Alarm", 575, 315);
fill(255);
textSize(17);
text("ALARM", 577, 280);
}

boolean isMouseOver(int x, int y, int w, int h){
  if(mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h){
    return true;
  }
  return false;
}


void mousePressed(){
  //if(isMouseOver(125, 600, 50, 50) == true){
  //  println("mouse pressed open");
 //   color1 = ( #FFE44B);
 // }
 // else{
 //   color1 = 255;
 // }
 // if(isMouseOver(575, 600, 50, 50) == true){
 //  color2 = #FFE44B;
 //  println("mouse pressed close");

 // }
  if(isMouseOver(350, 400, 50, 50) == true){
    color3 = #FFE44B;
    
    //println("mouse pressed 2nd floor");
  }
  if(isMouseOver(350, 500, 50, 50) == true){
    color4 = #FFE44B;
    //println("mouse pressed 1st floor");
  }
  if(isMouseOver(125, 250, 50, 50) == true){
    colorr = !colorr;
    //println("mouse pressed call");
  }
  if(isMouseOver(350, 250, 50, 50) == true){
     colorr2 = !colorr2;
    //println("mouse pressed stop");
  }
  if(isMouseOver(575, 250, 50, 50) == true){
     colorr3 = !colorr3;
    //println("mouse pressed alarm");
  }
    
}
