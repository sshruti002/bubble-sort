#Now create a similar method called #bubble_sort_by which sorts an array but accepts a block. The block should take two arguments which represe#nt the two elements currently being compared. Expect that the block's return will be similar to the spaceship operator you learned about befor# -- if the result of the block is negative, the element on the left is "smaller" than the element on the right. 0 means they are equal. A posi#tive result means the left element is greater.

def bubble_sort_by (arr)

len = (arr.length)-1

for i in 0..len      #loop from 0 to len
for j in (i+1)..len  #inner loop from i+1 to len

res = yield(arr[i], arr[j]) 
if res > 0
puts "swapping #{arr[j]} and #{arr[i]}"
arr[j], arr[i] = arr[i], arr[j]  #swapping in case above condn is true
end

end
end  #end of for loop

puts arr.inspect




end






bubble_sort_by(["Zoo", "Wildlife", "hello","Park", "hi", "hey"]) do |left, right|
left.length - right.length

end
