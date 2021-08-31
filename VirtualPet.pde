import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(400, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(192);
  int y = arduino.analogRead(5);
  System.out.println(y);
  stroke(-1*y,-1*y,-1*y);
  background(1*y,1*y,1*y);
   fill(255, 192, 203);
ellipse(180,360,30,1*y);
fill(255, 192, 203);
ellipse(220,360,30,1*y);
  fill(128, 128, 128);
ellipse(180,50,30,0.75*y);
  fill(128, 128, 128);
ellipse(220,50,30,0.75*y);
fill(255, 253, 208);
ellipse(200,110,130,140);
fill(0,0,0);
ellipse(200,110,30,60);
fill(0,0,0);
ellipse(200,270,100,180);
fill(2*y,0,0);
ellipse(187.5,70,30,40);
fill(2*y,0,0);
ellipse(212.5,70,30,40);
line(187.5,50,187.5,89);
line(212.5,50,212.5,89);
line(160,220,100,2*y);
line(240,220,310,2*y);
fill(255, 192, 203);
ellipse(200,155,20,0.15*y);
fill(255, 253, 208);
ellipse(200,265,60,120);
line(185,40,200,50);
line(215,40,200,50);

}
