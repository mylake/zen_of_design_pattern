class Soldier

  def initialize
    @gun
  end

  def set_gun(gun)
    @gun = gun
  end

  def kill_enenmy
    p 'solider kill enemy'
    @gun.shoot
  end

end
