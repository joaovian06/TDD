class StringCalculator
  def add_string(my_string)
    return 0 if my_string.empty?
    return my_string.to_i unless my_string.include? ','
  end
end
