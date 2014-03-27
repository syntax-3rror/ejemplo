def tri(t)
     
	 t= <<EOS
1 
9 4 
2 4 6 
7 5 8 3 
EOS
t.map &:to_i
l = []
i=1

loop do
    l.push t.slice!(0,i)
    i += 1
    break if t == []
end
trees = [0, 1].repeated_permutation(l.length-1).to_a.map! do |tree|
    [0].concat tree
end

trees.map! do |tree|
    newt = []
    tree.each_with_index do |e, i|
        newt.push tree.slice(0, i+1).inject :+
    end
    newt
end

rr = []
trees.each do |t|
    r = 0
    t.each_with_index do |v, i|
        r += l[i][v]
    end
    rr.push r
end
p rr.max
end



