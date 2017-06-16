public class LaserCannon extends AbstractCannon
{

  LaserCannon()
  {
    this.cannonType = e_CannonType.LASER_C;
    this.rpm = 1;
    this.armor = 100;
    this.fireRange = 600;
    this.damage= 80;
    this.rgb = #AAAAFF;
    this.speed = 4;
        
    this.x1 = 30;
    this.y1 = 195;
    this.x2 = 58;
    this.y2 = 145;
    this.x3 = 86;
    this.y3 = 195;
    
    this.bullet_X = 58;
    this.bullet_Y = 145;
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
    //println("laser " + bullet_X);
    if(this.bullet_X < this.fireRange)
    {
      stroke(this.rgb);
      line(this.bullet_X, this.bullet_Y, this.bullet_X +20 , this.bullet_Y);
      this.bullet_X = this.bullet_X + this.speed;
    }
  }
}