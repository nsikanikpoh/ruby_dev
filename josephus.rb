def josephus(items,k)
  Array.new(items.size) { items.rotate!(k-1).shift }
end


p josephus([1,2,3,4,5,6,7], 3)
