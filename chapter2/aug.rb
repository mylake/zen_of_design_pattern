require './rifle.rb'
class AUG < Rifle
  def zoom_out
    p 'use zoom'
  end

  def shoot
    p 'AUG shoot'
  end
end
