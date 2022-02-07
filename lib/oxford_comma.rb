require 'pry'
def oxford_comma array
    if array.length == 1
        return array[0].to_s
    elsif array.length == 2
        new_array = array.each_with_index.map do |item, index|
            index == array.length - 1 ? "and #{item}" : "#{item} "
        end
    else
        new_array = array.each_with_index.map do |item, index|
            index == array.length - 1 ? "and #{item}" : "#{item}, "
        end
    end
    new_array.join
end

# binding.pry