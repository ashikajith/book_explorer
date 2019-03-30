a = (1..10).to_a.shuffle
s = []
while !a.empty? 
  s << a.delete(a.min)
end
p s
