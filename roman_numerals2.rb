class Fixnum
  VERSION = 1

  def to_roman
    r = ''
    n = self
    decimals = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    roman = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']

    decimals.each_with_index do |decimal, i|
      while n >= decimal do
        r += roman[i];
        n -= decimal;
      end
    end
    return r;
  end
end

