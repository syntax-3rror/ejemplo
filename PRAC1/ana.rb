
  def group_anagrams(words)
  array = []
 words.each do |word|
   # word = words.first
    delta, words = words.partition { |match| word.downcase.chars.sort.join.eql?(match.downcase.chars.sort.join ) } 
    array += delta
  end
 

 puts array
end
group_anagrams (['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])