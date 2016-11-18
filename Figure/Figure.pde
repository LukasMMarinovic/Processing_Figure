size(500, 500);
strokeWeight(0);


//draws background
stroke(35,105,100);
color background = color(35,105,100);
fill(background);
ellipse(250,250,500,500);

//draws body
stroke(100,180,180);
color kittyBody = color(100,180,180);
fill (kittyBody);
quad(225, 200, 275, 200, 300, 300, 200, 300);


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
ellipse(295,200,5,5);