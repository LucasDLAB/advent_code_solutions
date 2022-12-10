def catch_priority(items)
  items.map do |item|
    half = item.length/2.ceil()
    first_half = item[0..(half-1)].split('')
    second_half = item[half..-1].split('')
    second_half & first_half
  end
end

def gather_group(items)
  items.map.with_index do |item,index|
    next unless index % 3 == 0
    group = item.split('')

    2.times {|ind| group = group & items[index+ind+1].split('')}
    group
  end
end

def sum_priorities(priorities)
  alpha = (('a'..'z').to_a << ('A'..'Z').to_a).flatten

  priorities.flatten.sum do |priority|
    alpha.index(priority) + 1
  end
end

if __FILE__ == $PROGRAM_NAME
  items = File.open('lib/day_3/day_3_input.txt').readlines
    .map{ |item| item.delete("\n")}

  p sum_priorities(catch_priority(items))
  p sum_priorities(gather_group(items).compact)
end