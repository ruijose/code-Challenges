class Robot

  USED_NAMES = []

  def name
    @name ||= create_name
  end

  def create_name
    robot_name = (("A".."Z").to_a.sample(2) << (1..10).to_a.sample(3)).join
    unless USED_NAMES.include? robot_name
      USED_NAMES << robot_name
      return robot_name
    end
  end

  def reset
    @name = nil 
  end
end

