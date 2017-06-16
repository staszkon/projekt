public abstract class AbstractCannon implements I_AbsCannon
{
  protected e_CannonType cannonType;
  protected  int rpm;
  protected  int armor;
  protected  int damage;
  protected  int fireRange;
  protected  int price; 
  protected  int rgb;
  protected  int speed;
  
  protected float x1;
  protected float y1;
  protected float x2;
  protected float y2;
  protected float x3;
  protected float y3;
  
  public float bullet_X;
  public float bullet_Y;
  
  
  
  
  @Override
  public void show()
  {
    fill(rgb);
    noStroke();
    triangle(x1, y1, x2, y2, x3, y3); 
  }
  
  public abstract void shoot();
  
  
  @Override
  public e_CannonType getCannonType()
  {
    return cannonType;
  }
  @Override
  public int getRPM()
  {
    return rpm;
  }
  @Override
  public int getArmor()
  {
    return armor;
  }
  @Override
  public int getDamage()
  {
    return damage;
  }
  @Override
  public int getFireRange()
  {
    return fireRange;
  }
  @Override
  public int getPrice()
  {
    return price;
  }
  @Override
  public float getBulletX()
  {
    return bullet_X;
  }
  
  @Override
  public float getBulletY()
  {
    return bullet_Y;
  }
  
  @Override
  public String toString()
  {
    return "Cannon Type: " + cannonType + "\nRound Per Minute: " + rpm + "\nFire Range: " + fireRange + "\nArmor: " + armor + "\nDamage: " +damage;
  }
  @Override
  public void setBulletX(int bullet_X)
  {
    this.bullet_X = bullet_X;
    
  }
}