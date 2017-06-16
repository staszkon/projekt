interface I_AbsCannon
{
  public abstract e_CannonType getCannonType();
  public abstract void show();
  public abstract void shoot();
  public abstract int getRPM();
  public abstract int getArmor();
  public abstract int getDamage();
  public abstract int getFireRange();
  public abstract int getPrice();
  public abstract float getBulletX();
  public abstract float getBulletY(); 
  public abstract void setBulletX(int bullet_X);
}