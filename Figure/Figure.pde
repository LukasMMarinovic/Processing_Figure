size(500, 500);
strokeWeight(0);


//draws background
stroke(35,105,100);
color background = color(35,105,100);
fill(background);
ellipse(250,250,500,500);

//draws tail
stroke(40,160,145);
color tail = color(40,160,145);
fill(tail);
beginShape();
vertex(290,300);
vertex(315,285);
vertex(320,235);
vertex(355,225);
vertex(335,210);
vertex(310,215);
vertex(300,230);
vertex(310,275);
endShape();

//draws body
stroke(100,180,180);
color kittyBody = color(100,180,180);
fill (kittyBody);
quad(225, 200, 275, 200, 300, 300, 200, 300);



stroke(25,140,135);
color ear = color(25,140,135);
fill(ear);
//rear ear
triangle(200,150, 205, 175, 225, 160);


//draws head
stroke(120,200,2000);
color kittyHead = color(120,200,200);
fill (kittyHead);
ellipse(250,200,100,100);

//draw face
stroke(0,0,0);
color eye = color(0,0,0);
fill (eye);
ellipse(205,200,5,5);
ellipse(285,212,5,5);

stroke(25,140,135);
fill(ear);
//front ear
triangle(300,155, 295, 180, 275, 165);

//draws feet
arc(210,302,25,25,radians(180),radians(360));
arc(270,302,25,25,radians(180),radians(360));