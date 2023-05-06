float ballY;  // posición vertical de la pelota
float ballSpeed = 0;  // velocidad de la pelota
float gravity = 0.1;  // gravedad que afecta a la pelota
float velHorizontal = 0.8;  // gravedad que afecta a la pelota
float bounceForce = -6;  // fuerza constante del rebote
float posInit;  // posición inicial de la pelota

float ballX;  // posición vertical de la pelota


void setup() {
  size(400, 400);
  ballY = height/4;
  ballX = width/2;
  posInit = ballY;
}

void draw() {
  background(255);
  
  // actualizar la posición de la pelota
  ballY += ballSpeed;
  ballSpeed += gravity;
  
  ballX += velHorizontal;
  
  println(ballSpeed);

  
  // comprobar si la pelota ha llegado al suelo
  if (ballY > height-25) {
    // aplicar el rebote constante y reducir la velocidad
    ballSpeed = bounceForce;
    ballY = height-25;
    //ballSpeed *= 0.9; // reducir la velocidad de la pelota por la elasticidad
  }
  
  if(ballX >width-25){
    ballX = width-25;
    velHorizontal *=-1;
  }
  
  if(ballX <25){
   velHorizontal *=-1; 
  }
  

  
  // dibujar la pelota
  fill(0);
  ellipse(ballX, ballY, 50, 50);
}
