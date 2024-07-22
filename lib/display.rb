# displaying color of each guess
module Display
  def color_code(number)
    {
      1 => "\e[101m 1 \e[0m",
      2 => "\e[43m 2 \e[0m",
      3 => "\e[44m 3 \e[0m",
      4 => "\e[45m 4 \e[0m",
      5 => "\e[46m 5 \e[0m",
      6 => "\e[47m 6 \e[0m"
    }[number]
  end

  def show_code(array)
    array.each do |el|
      print color_code(el)
    end
  end
end
