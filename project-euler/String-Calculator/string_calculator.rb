class StringCalculator
  def add(my_string)
    return 0 if my_string.empty?
    return my_string.to_i unless my_string.include? ','

    my_string.split(',').map!(&:to_i).sum if my_string.include? ','
  end
end
