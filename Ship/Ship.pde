//Ship By Jessen Durden 
// 1/31/19 
float shipX;
float shipY;
float speedX =0;
float speedY =0;
//Sets the postion and speed of the ship 
void setup() {
  size(900, 600);
  background(255);
  //Sets the size and color of the Background
  shipX = width/2;
  shipY = height/2;
  //Defines the Properties of the ShipX and ShipY vaules 
  frameRate(20);
  //Makes the Frame Rate to 20
  fill(255, 0, 0);
  //Makes the ship red
}
void draw() {
  background(0);
  //ReDraws the Background
  ellipse(shipX, shipY, 40, 40);
  //Draws the ship
  if (keyPressed && keyCode == LEFT) {
    speedX--;
  }
  if (keyPressed && keyCode == RIGHT) {
    speedX++;
  }


  if (keyPressed && keyCode == UP) {
    speedY --;
  }

  if (keyPressed && keyCode == DOWN) {
    speedY++;
  } 
  if (keyPressed && keyCode == ALT) {
    fill(255);
  }
  //Sets the direction of the ship with the corresponding arrow key
  shipX = shipX+speedX;
  speedX=.99*speedX;
  shipY= shipY+speedY;
  speedY=.99*speedY;
  //Sets up the Gravity Command
}
