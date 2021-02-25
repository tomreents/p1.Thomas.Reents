import processing.sound.*;
SoundFile sound1;
SoundFile sound2;
SoundFile sound3;
SoundFile sound4;
button button1;
button button2;
button button3;
button button4;
button button5;
button button6;
button button7;
button button8;
button button9;
button button0;
button timeCook;
button timer;
button add30;
button start;
button stop;
button power;
button open;
DigitalClock digitalClock;

boolean done = false;
String buff1 = "";
String buff2 = "";
String time = "";
int k;
int s; 
int m;
int startSec;
boolean numPressed = false; 
int action = 0; 
int val = 200;
 
void setup() {
  size(1500, 800);
  smooth();
  digitalClock = new DigitalClock(65, 1132, 110);
  timeCook = new button(1130, 130, 55, 55, "Time\nCook", 15);
  timer = new button(1200, 130, 55, 55, "Timer", 15);
  add30 = new button(1270, 130, 55, 55, "add\n30", 15);
  button1 = new button(1130, 200, 55, 55, "1", 20);
  button2 = new button(1200, 200, 55, 55, "2", 20);
  button3 = new button(1270, 200, 55, 55, "3", 20);
  button4 = new button(1130, 270, 55, 55, "4", 20);
  button5 = new button(1200, 270, 55, 55, "5", 20);
  button6 = new button(1270, 270, 55, 55, "6", 20);
  button7 = new button(1130, 340, 55, 55, "7", 20);
  button8 = new button(1200, 340, 55, 55, "8", 20);
  button9 = new button(1270, 340, 55, 55, "9", 20);
  start = new button(1130, 410, 55, 55, "Start", 15);
  button0 = new button(1200, 410, 55, 55, "0", 20);
  stop = new button(1270, 410, 55, 55, "Stop", 15);
  power = new button(1140, 480, 175, 50, "High Power: OFF", 18);
  open = new button(1130, 550, 195, 65, "Open", 50);
  sound1 = new SoundFile(this, "button.mp3");
  sound2 = new SoundFile(this, "door.mp3");
  sound3 = new SoundFile(this, "alarm.mp3");
  sound4 = new SoundFile(this, "on.mp3");
}

void draw () {
  background(50);
  fill(200);
  rect(10, 10, 1350, 650, 10);
  fill(val);
  rect(30, 30, 1050, 610, 10);
  fill(0);
  rect(50, 50, 1010, 570, 10);
  fill(0);
  rect(1130, 50, 195, 75, 7);
  timeCook.display(8, 20);
  timer.display(6, 25);
  add30.display(10, 20);
  button1.display(20,32);
  button2.display(20, 32);
  button3.display(20, 32);
  button4.display(20,32);
  button5.display(20, 32);
  button6.display(20, 32);
  button7.display(20,32);
  button8.display(20, 32);
  button9.display(20, 32);
  start.display(6, 25);
  button0.display(20,32);
  stop.display(6,25);
  power.display(10, 30);
  open.display(20, 47);
  
  switch(action) {
    case 0:
      if(open.pressed == true)
        action = 3;
      digitalClock.getTime();
      digitalClock.display();
      break;
    case 1: 
      TimerDisplay("Enter Cook\nTime:");
      break;
    case 2:
      TimerDisplay("Enter Time:");
      break;
    case 3:
      if(open.pressed == false){
        action = 0;
      }
      break;
  }
}
  
void mousePressed() {
  if(timeCook.overButton()){
    numPressed = false;
    time = "";
    timeCook.value = 255;
    timeCook.textFill = 0;
    action = 1;
    done = false;
    sound1.play();
  }
  if(timer.overButton()){
    numPressed = false;
    time = "";
    timer.value = 255;
    timer.textFill = 0;
    action = 2;
    done = false;
    sound1.play();
  }
  if(add30.overButton()){
    add30.value = 255;
    add30.textFill = 0;
    add30.pressed = true;
    numPressed = true;
    updateSecMin();
    sound1.play();
  }
  if(button1.overButton()){
    button1.value = 255;
    button1.textFill = 0;
    numPressed = true;
    if(time.length() < 4) {
      time = time + button1.title;
    }
    updateSecMin();
    sound1.play();
  }
  if(button2.overButton()){
    button2.value = 255;
    button2.textFill = 0;
    numPressed = true;
    if(time.length() < 4) {
      time = time + button2.title;
    }
    updateSecMin();
    sound1.play();
  }
  if(button3.overButton()){
    button3.value = 255;
    button3.textFill = 0;
    numPressed = true; 
    if(time.length() < 4) {
      time = time + button3.title;
    }
    updateSecMin();
    sound1.play();
  }
  if(button4.overButton()){
    button4.value = 255;
    button4.textFill = 0;
    numPressed = true;
    if(time.length() < 4) {
      time = time + button4.title;
    }
    updateSecMin();
    sound1.play();
  }
  if(button5.overButton()){
    button5.value = 255;
    button5.textFill = 0;
    numPressed = true;
    if(time.length() < 4) {
      time = time + button5.title;
    }
    updateSecMin();
    sound1.play();
  }
  if(button6.overButton()){
    button6.value = 255;
    button6.textFill = 0;
    numPressed = true;
    if(time.length() < 4) {
      time = time + button6.title;
    }
    updateSecMin();
    sound1.play();
  }
  if(button7.overButton()){
    button7.value = 255;
    button7.textFill = 0;
    numPressed = true;
    if(time.length() < 4) {
      time = time + button7.title;
    }
    updateSecMin();
    sound1.play();
  }
  if(button8.overButton()){
    button8.value = 255;
    button8.textFill = 0;
    numPressed = true;
    if(time.length() < 4) {
      time = time + button8.title;
    }
    updateSecMin();
    sound1.play();
  }
  if(button9.overButton()){
    button9.value = 255;
    button9.textFill = 0;
    numPressed = true;
    if(time.length() < 4) {
      time = time + button9.title;
    }
    updateSecMin();
    sound1.play();
  }
  if(start.overButton()){
    start.value = 255;
    start.textFill = 0;
    start.pressed = true;
    numPressed = false; 
    k = millis()/1000;
    startSec = s;
    sound1.play();
  }
  if(button0.overButton()){
    button0.value = 255;
    button0.textFill = 0;
    numPressed = true;
    if(time.length() < 4) {
      time = time + button0.title;
    }
    updateSecMin();
    sound1.play();
  }
  if(stop.overButton()){
    stop.value = 255;
    stop.textFill = 0;
    stop.pressed = true; 
    sound1.play();
  }
  if(power.overButton()){
    power.value = 255;
    power.textFill = 0;
    if(power.title.equals("High Power: OFF")){
      power.title = "High Power: ON";
    }
    else {
      power.title = "High Power: OFF";
    }
    sound1.play();
  }
  if(open.overButton()){
    open.value = 255; 
    open.textFill = 0;
    sound2.play();
    if(open.title.equals("Open")){
      open.title = "Close";
      open.pressed = true;
      val = 0;
    }
    else {
      open.title = "Open";
      open.pressed = false;
      val = 200;
    }
  }
}

void mouseReleased() {
    timeCook.value = 0;
    timeCook.textFill = 255;
    
    timer.value = 0;
    timer.textFill = 255;
    
    add30.value = 0;
    add30.textFill = 255;
    
    button1.value = 0;
    button1.textFill = 255;
    
    button2.value = 0;
    button2.textFill = 255;
    
    button3.value = 0;
    button3.textFill = 255;
    
    button4.value = 0;
    button4.textFill = 255;
    
    button5.value = 0;
    button5.textFill = 255;
    
    button6.value = 0;
    button6.textFill = 255;
    
    button7.value = 0;
    button7.textFill = 255;
    
    button8.value = 0;
    button8.textFill = 255;
    
    button9.value = 0;
    button9.textFill = 255;
    
    start.value = 0;
    start.textFill = 255;
    
    button0.value = 0;
    button0.textFill = 255;
    
    stop.value = 0;
    stop.textFill = 255;
    stop.pressed = false; 
    
    power.value = 0;
    power.textFill = 255;
    
    open.value = 0;
    open.textFill = 255;
}

void TimerDisplay(String message) {
  if(numPressed == true){
      fill(255);
      textSize(65);
      if(time.length() == 1){
        text("00:0" + time, 1132, 110);
      }
      else if(time.length() == 2) {
        text("00:" + time, 1132, 110);
      }
      else if(time.length() == 3) {
        text("0" + time.charAt(0) + ":" + time.charAt(1) + time.charAt(2), 1132, 110);
      }
      else if(time.length() == 4) {
        text(time.charAt(0) +""+ time.charAt(1) + ":" + time.charAt(2) + time.charAt(3), 1132, 110);
      }
      if(stop.pressed == true){
        numPressed = false;
        time = "";
        stop.pressed = false;
        action = 0;
        updateSecMin();
      }
    }
    else if(start.pressed == true) {
      fill(255);
      textSize(65);
      if(done == false){
        if(action == 1 && sound4.isPlaying() == false){
          sound4.loop();
        }
        if(m < 10) {
          buff1 = "0";
        }
        else {
          buff1 = "";
        }
        if(s < 10) {
          buff2 = "0";
        }
        else {
          buff2 = "";
        }
        if(s == -1 && m > 0){
          m = m-1;
          startSec = 59;
          k = millis()/1000;
        }
        s = (startSec + k - (millis()/1000));
        text(buff1 + m + ":" + buff2 + s, 1132, 110);
        if(s < 0 && m == 0){
          sound4.stop();
          sound3.loop();
          done = true;
        }
      }
      else {
        text("Done!", 1130, 110);
      }
      if(action == 1) {
        if(open.pressed == true){
          sound4.stop();
          sound3.stop();
          numPressed = false;
          time = "";
          updateSecMin();
          action = 3;
          start.pressed = false;
        }
      }
      if(stop.pressed == true){
        sound4.stop();
        sound3.stop();
        numPressed = false;
        start.pressed = false;
        time = "";
        action = 0;
        updateSecMin();
        stop.pressed = false;
      }
    }
    else {
        fill(255);
        textSize(25);
        text(message, 1160, 75);
        if(stop.pressed == true)
          action = 0;
    }
}

class DigitalClock extends Clock {
  int fontSize;
  float x;
  float y;
 
  DigitalClock(int fontSize, float x, float y) {
    this.fontSize = fontSize;
    this.x = x;
    this.y = y;
  }
  
  void getTime() {
    super.getTime();
  }
  
  void display() {
    fill(255);
    textSize(fontSize);
    if (h > 12) {
      h = h - 12;
    }
    if(h < 10){
      text ("0" + h + ":" + nf(m, 2), x, y);
    }
    else {
      text (h + ":" + nf(m, 2), x, y);
    }
  } 
}

class Clock {
  int h; 
  int m;
  
  Clock() {
  }
  
  void getTime() {
    h = hour();
    m = minute();
  }
}

class button {
  float x;
  float y;
  float w; 
  float h;
  int value = 0;
  int textFill = 255;
  int sizeText;
  String title;
  boolean pressed = false;
  
  button(float x, float y, float w, float h, String title, int sizeText){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.title = title; 
    this.sizeText = sizeText;
  }
  void display(int x1, int y1) {
    fill(value);
    rect(x, y, w, h, 7);
    fill(textFill);
    textSize(sizeText);
    text(title, x + x1, y + y1);
  }
  
  boolean overButton()  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }
}

void updateSecMin(){
  if(time.length() == 1){
        s = Character.getNumericValue(time.charAt(0)); 
        m = 0;
      }
      else if(time.length() == 2) {
        s = Integer.parseInt(time);
        m = 0;
      }
      else if(time.length() == 3) {
        m = Character.getNumericValue(time.charAt(0));
        s = Integer.parseInt(time) - (m * 100);
      }
      else if(time.length() == 4) {
        m = Character.getNumericValue(time.charAt(0)) * 10 + Character.getNumericValue(time.charAt(1));
        s = Integer.parseInt(time) - (m*100);
      }
      else {
        s = 0;
        m = 0;
      }
      if(add30.pressed == true){
        s = s + 30;
        add30.pressed = false;
      }
      if(s >= 60) {
        m = 1 + m;
        s = s - 60;
      }
      if(s < 10)
        time = String.valueOf(m) + "0" + String.valueOf(s);
       else 
         time = String.valueOf(m) + String.valueOf(s);
}
