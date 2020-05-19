class StringCalculator
  def add(my_string)
    my_string.split(',').map(&:to_i).sum
  end
end
