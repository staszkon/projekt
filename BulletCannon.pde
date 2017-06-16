public class BulletCannon extends AbstractCannon
{
  
  
  BulletCannon()
  {
    this.cannonType = e_CannonType.BULLET_C;
    this.rpm = 3;
    this.armor = 100;
    this.fireRange = 400;
    this.damage = 20;
    this.rgb = #FFAAAA;
    this.speed = 2;
    
    this.x1 = 30;
    this.y1 = 100;
    this.x2 = 58;
    this.y2 = 50;
    this.x3 = 86;
    this.y3 = 100;
    this.bullet_X = 58;
    this.bullet_Y = 50;
    
  }
  
  void setPrice(int price)
  {
    this.price = price;
  }
  @Override
  public void setBulletX(int bullet_X)
  {
    this.bullet_X = bullet_X;
  }
  
  
  public void shoot()
  {
    //println("bullet " + bullet_X);
    if(this.bullet_X < this.fireRange)
    {
      stroke(this.rgb);
      fill(this.rgb);
      ellipse(this.bullet_X, this.bullet_Y, 10, 5);
      this.bullet_X = this.bullet_X + this.speed; 
    }
  }
}