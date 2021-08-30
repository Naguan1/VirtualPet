import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(400, 400);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(192);
  int y = arduino.analogRead(5);
  System.out.println(y);
   fill(255, 192, 203);
ellipse(180,360,30,80);
fill(255, 192, 203);
ellipse(220,360,30,80);
  fill(128, 128, 128);
ellipse(180,30,30,1*y);
  fill(128, 128, 128);
ellipse(220,30,30,1*y);
fill(255, 253, 208);
ellipse(200,90,130,140);
fill(0,0,0);
ellipse(200,90,30,60);
fill(0,0,0);
ellipse(200,250,100,180);
fill(2*y,0,0);
ellipse(187.5,50,30,40);
fill(2*y,0,0);
ellipse(212.5,50,30,40);
line(187.5,30,187.5,69);
line(212.5,30,212.5,69);
stroke(0, 0, 0);
line(160,200,100,2*y);
line(240,200,310,2*y);
fill(255, 192, 203);
ellipse(200,135,20,0.2*y);
fill(255, 253, 208);
ellipse(200,245,60,120);
}
