class StringCalculator
  def add_string(my_string)
    return 0 if my_string.empty?
    return my_string.to_i unless my_string.include? ','

    if my_string.include? ','
      my_string.split(',').map! { |string_num| string_num.to_i }.sum
    end
  end
end
