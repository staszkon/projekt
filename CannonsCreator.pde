class CannonsCreator implements I_CannonCreator
{
  private CannonsCreator Instance;
  
  private CannonsCreator()
  {
  }
  
  public synchronized CannonsCreator getInstance()
  {
    if(Instance == null)
    {
      Instance = new CannonsCreator();
    }
    return Instance;
  }
  
  public I_AbsCannon create(e_CannonType cannonType)
  {
    I_AbsCannon cannon;
    switch (cannonType)
    {
      case LASER_C:
        LaserCannon laserCannon = new LaserCannon();
        laserCannon.setPrice(2000);
        cannon=laserCannon;
        break;
      case BULLET_C:
        BulletCannon bulletCannon = new BulletCannon();
        bulletCannon.setPrice(2000);
        cannon=bulletCannon;
        break;
      case FIRE_C:
        FireCannon fireCannon = new FireCannon();
        fireCannon.setPrice(2000);
        cannon=fireCannon;
        break; 
      default:
        cannon = null;
        break;
    } 
    return cannon;
  }
}