class Fixnum
  def to_roman
      process_l
  end

  private

  def process_l(target = self)
    if target > 50
      return 'L' * (target / 50) + process_l(target % 50)
    elsif target > 39
      return 'XL' + process_x(target % 40)
    else
      process_x(target)
    end
  end

  def process_x(target = self)
    if target > 10
      return 'X' * (target / 10) + process_x(target %10)
    elsif target > 8
      return 'I' * (10 - target) + 'X'
    else
      process_v(target)
    end
  end

  def process_v(target = self)
    if target > 5
      return 'V' + 'I' * (target % 5)
    else
      process_i(target)
    end
  end

  def process_i(target = self)
    if target > 3
      return 'I' * (5 - target) + 'V'
    else
      return 'I' * target
    end
  end
end
