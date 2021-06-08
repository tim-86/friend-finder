players = %w[a b c d]

# Gen. 1
# a - c
# b - d

# Gen. 2
# a - d
# b - c


# Gen. 1
# a - b
# c - d

# Gen. 2
# a - c
# b - d

# Gen. 3
# a - d
# b - c


# first half = get first half of list
# second half = get second half of list
# list length / 2 times:
#   each element in first half as first:
#     each element in second half as second:
#       if first and second were not paired before:
#         pop second from second half
#         record pair: (first, second)
#         end inner loop


def round_robin(list, pairs = [])
 
  length = list.length
  halfway = (length / 2.0).ceil
  first_half = list[0..halfway - 1]
  second_half = list[halfway..]


  if length <= 2

    first = first_half[0]
    second = second_half[0] || ''
    pairs << [first, second] unless first == second

    return pairs
  else
    halfway.times do
      second_halves_used = []
      first_half.each do |first|
        found_second = false
        second_half.each do |second|
          next if second_halves_used.include?(second)
          next if pairs.any? { |pair| (pair[0] == first && pair[1] == second) || (pair[1] == first && pair[0] == second) }

          # second_half.delete(second)
          found_second = true
          pairs << [first, second]
          second_halves_used << second
          break
        end
        unless found_second
          pairs << [first, '']
        end
      end
    end
    pairs = round_robin(first_half, pairs)
    pairs = round_robin(second_half, pairs)
    return pairs
  end
end



