public class FireCannon extends AbstractCannon
{

  
  FireCannon()
  {
    this.cannonType = e_CannonType.FIRE_C;
    this.rpm = 400;
    this.armor = 200;
    this.fireRange = 100;
    this.damage= 40;
    this.rgb = #AAFFAA;    
    this.speed = 1;
    
    this.x1 = 30;
    this.y1 = 300;
    this.x2 = 58;
    this.y2 = 250;
    this.x3 = 86;
    this.y3 = 300;
    this.bullet_X = 58;
    this.bullet_Y = 250;
  }
  
  void setPrice(int price)
  {
    this.price = price;
  }
  @Override
  void setBulletX(int bullet_X)
  {
    this.bullet_X = bullet_X;
  }
  
  
  public void shoot()
  {
    //println("ogien " + bullet_X);
    if(this.bullet_X < this.fireRange)
    {
      stroke(this.rgb);
      fill(this.rgb);
      triangle(this.bullet_X, this.bullet_Y, this.bullet_X+30, this.bullet_Y+10, this.bullet_X+30, this.bullet_Y-10);
      arc(this.bullet_X+30, this.bullet_Y, 20, 20, -PI/2, +PI/2);
      this.bullet_X = this.bullet_X + this.speed;
    }
  }
}