def fibs(num)
  sequence = [0, 1]
  (2...num).each { |i| sequence.push(sequence[i - 1] + sequence[i - 2]) }
  sequence
end

def fibs_rec(num)
  return [0] if num.zero?
  return [0, 1] if num == 1
  sequence = fibs_rec(num - 1)
  sequence << sequence[num - 1] + sequence[num - 2]
end