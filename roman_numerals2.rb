class Fixnum
  VERSION = 1

  def to_roman
    r = ''
    n = self
    map = { 'M'  => 1000,
            'CM' => 900,
            'D'  => 500,
            'CD' => 400,
            'C'  => 100,
            'XC' => 90,
            'L'  => 50,
            'XL' => 40,
            'X'  => 10,
            'IX' => 9,
            'V'  => 5,
            'IV' => 4,
            'I'  => 1 }

    map.each_pair do |roman, decimal|
      while n >= decimal do
        r += roman;
        n -= decimal;
      end
    end
    return r;
  end
end
