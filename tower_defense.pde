String printedlaser;
String printedfire;
String printedbullet;
I_AbsCannon laserCannon;
I_AbsCannon fireCannon;
I_AbsCannon bulletCannon;
I_AbsCannon testCannon;
boolean clicked;


void setup() 
{
  size(640, 360);   
  CannonsCreator cannonsCreator = new CannonsCreator();
  
  //test modulu "cannonsCreator.create"
  testCannon = cannonsCreator.create(e_CannonType.LASER_C);
  printArray(testCannon);
  if(testCannon == null)
  {
    exit();
  }
  
  //koniec testu
  
  
  
  laserCannon = cannonsCreator.create(e_CannonType.LASER_C);
  fireCannon = cannonsCreator.create(e_CannonType.FIRE_C);
  bulletCannon = cannonsCreator.create(e_CannonType.BULLET_C);
  
}

void draw() 
{
  background(200);
  frameRate(10);
  
  
  printedlaser = laserCannon.toString();
  printedfire = fireCannon.toString();
  printedbullet = bulletCannon.toString();
  
  //println(laserCannon);
  //println(printedfire);
  //println(printedbullet);

  laserCannon.show();
  fireCannon.show();
  bulletCannon.show();
  
  float bC_X  = bulletCannon.getBulletX();
  float fC_X  = fireCannon.getBulletX();
  float lC_X  = laserCannon.getBulletX();
  float bC_fR = bulletCannon.getFireRange();
  float fC_fR = fireCannon.getFireRange();
  float lC_fR = laserCannon.getFireRange();
  
  println("Clicked: " + clicked + 
          ", bulletCannonX: " + bC_X + ", bulletRange: " + bC_fR + 
          ", fireCannonX: " + fC_X + ", fireRange: " + fC_fR + 
          ", laserCannonX: " + lC_X + ", laserRange: " + lC_fR);
  
  if (clicked ==true)
  {
    bulletCannon.shoot();
    laserCannon.shoot();
    fireCannon.shoot();
    
    if( (bC_X >= bC_fR) ||
        (fC_X >= fC_fR) || 
        (lC_X >= lC_fR) )
    {
      clicked = false;
    }
  }
} 
void mouseClicked()
{
   clicked = true;
   bulletCannon.setBulletX(58);
   laserCannon.setBulletX(58);
   fireCannon.setBulletX(58);
}
  