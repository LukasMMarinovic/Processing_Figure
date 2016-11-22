//===========================================//
//             Processing_Figure             //
//                 11/21/16                  //
//===========================================//
//Draws a cat material figureat the specified// 
//coordinates.                               //
//===========================================//

///////////////////////////////////////////////
//                                           //
//                  |\___|\                  //
//                 /       |.                //
//                |  .     |_                //
//                |          )               //
//                |      -v-v                //
//                /        |\                //
//            Scratch-A-Bear Media           //
//-------------------------------------------//
//--------------Lukas Marinovic--------------//
//-------------------------------------------//
// Please visit:                             //
//  -Blog                                    //
//  http://scratchabear.blogspot.com         //
//  -Github                                  //
//  https://github.com/LukasMMarinovic       //
//                                           //
///////////////////////////////////////////////


Draw d = new Draw();  //creates a draw object "d"

  
  
void setup()  //sets up canvas
  {
    size(500, 500);
    strokeWeight(0);
    background(255);
    frameRate(144);
  }


 void draw()  //actually draws the kitty
 {
   
   int x = 0; //x and why coordinates for the position of the entire image
   int y = 0;
 
   
   
   d.backgroundDraw(x,y);  //draws each component
   
     if (key == 'a') //selects which tail to draw
   {
     d.tailDraw1(x,y);
   }
   else if (key == 'w')
   {
     d.tailDraw2(x,y); 
   }
   else if (key =='d')
   {
      d.tailDraw3(x,y);
   }

    
  
  d.earLeftDraw(x,y);
  d.bodyDraw(x,y);
  d.headDraw(x,y);
  d.earRightDraw(x,y);
  d.feetDraw(x,y);
  
  
  
  if (mouseX <250)   //tells the kitty whereto look based on mouse location
  {
    x = -5;
  }
  else if (mouseX >250)
  {
    x = 5;
  }
  else
  {
   x = 0; 
  }
  
    if (mouseY <250)
  {
    y = -5;
  }
  else if (mouseY >250)
  {
    y = 5;
  }
  else
  {
    y = 0;
  }

  d.faceDraw(x,y);
  
  
  
 }





///Color class:
///Stores color information and sets color of fill and stroke

class Colors
{
  color background; //set color variables
  color tail;
  color ear;
  color kittyBody;
  color face;
  color kittyHead;
  color foot;

  void backgroundColor()
  {
    stroke(35,105,100);
     background = color(35,105,100);
    fill(background);
  }
  
  void tailColor()
  {
    stroke(40,160,145);
    tail = color(40,160,145);
    fill(tail);
  }
  
  void earColor()
  {
    stroke(25,140,135);
    ear = color(25,140,135);
    fill(ear);
  }
  
  void bodyColor()
  {
    stroke(100,180,180);
    kittyBody = color(100,180,180);
    fill (kittyBody);
  }
  
  void headColor()
  {
    stroke(120,200,2000);
    kittyHead = color(120,200,200);
    fill (kittyHead);
    
  }
  
  void faceColor()
  {
    stroke(0,0,0);
    face= color(0,0,0);
    fill (face);
  }
  
  void footColor()
  {
    stroke(25,140,135);
    foot = color(25,140,135);
    fill(foot);
  } 
}



///Draw class
/// handles drawing of each cat component at the specified coordinates

class Draw
{
  
  Colors c = new Colors(); //establishes color object "c" 
  
  void backgroundDraw(int x,int y) //draws background
  {
    c.backgroundColor();
    ellipse(250+x,250+y,500,500);
  }
  
  void tailDraw1(int x,int y) //draws tail 1
  {
    c.tailColor();
    beginShape();
    vertex(290+x,300+y);       
    vertex(315+x,285+y);
    vertex(320+x,235+y);
    vertex(355+x,225+y);
    vertex(335+x,210+y);
    vertex(310+x,215+y);
    vertex(300+x,230+y);
    vertex(310+x,275+y);
    endShape();
  }
  
    void tailDraw2(int x,int y) //draws tail 2
  {
    c.tailColor();
    beginShape();
    vertex(290+x,300+y);       
    vertex(315+x,285+y);
    vertex(320+x+10,235+y+10);
    vertex(355+x+10,225+y+10);
    vertex(335+x+10,210+y+10);
    vertex(310+x+10,215+y+10);
    vertex(300+x+10,230+y+10);
    vertex(310+x,275+y);
    endShape();
  }
    void tailDraw3(int x,int y) //draws tail 3
  {
    c.tailColor();
    beginShape();
    vertex(290+x,300+y);       
    vertex(315+x,285+y);
    vertex(320+x+30,235+y+30);
    vertex(355+x+30,225+y+30);
    vertex(335+x+30,210+y+30);
    vertex(310+x+30,215+y+30);
    vertex(300+x+30,230+y+30);
    vertex(310+x,275+y);
    endShape();
  }
  
  void earLeftDraw(int x,int y) //draws left/rear ear
  {
    c.earColor();
    triangle(200+x,150+y, 205+x, 175+y, 225+x, 160+y);
  }
  
    void earRightDraw(int x,int y) //draws right/front ear
  {
    c.earColor();
    triangle(300+x,155+y, 295+x, 180+y, 275+x+y, 165+y);
  }
  
  void bodyDraw(int x,int y) //draws body
  {
    c.bodyColor();
    quad(225+x, 200+y, 275+x, 200+y, 300+x, 300+y, 200+x, 300+y);
  }
  
  void headDraw(int x,int y) //draws head
  {
    c.headColor();
    ellipse(250+x,200+y,100,100);
  }
  
  void faceDraw(int x,int y) //draws face
  {
    c.faceColor();
    ellipse(205+x,200+y,5,5);
    ellipse(285+x,212+y,5,5);
    arc(240+x,210+y,10,6,radians(10),radians(190));
  }
  
  void feetDraw(int x,int y) //draws feet
  {
    c.footColor();
    arc(210+x,302+y,25,25,radians(180),radians(360));
    arc(270+x,302+y,25,25,radians(180),radians(360));
  }
}