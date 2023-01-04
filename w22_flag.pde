size(400, 300);

// Draw the flag background
background(#f5b8c5);  // Blue

// Draw the white cross
noStroke();
fill(255);
rect(0, 50, 400, 50);  // Top
rect(50, 0, 50, 300);  // Left
rect(300, 0, 50, 300);  // Right
rect(0, 200, 400, 50);  // Bottom

// head
fill(#fcdaa9);
ellipse(200, 150, 150, 150);
//beard
fill(#c2b093);
arc(200, 160, 150, 130, 0, PI);
//glasses
fill(#473e31);
arc(200-75/2, 130, 75, 50, 0, PI);
arc(200+75/2, 130, 75, 50, 0, PI);
//wips
fill(#ff87bb);
ellipse(200, 180, 50, 50);
noFill();
strokeWeight(10);
stroke(#eb659f);
arc(200-35/2, 180, 35, 50, 0, PI);
arc(200+35/2, 180, 35, 50, 0, PI);

//jacket
fill(0);
noStroke();
ellipse(200, 300, 200, 150);
