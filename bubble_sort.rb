#Build a method bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology

def bubble_sort (arr) #method that takes an array as parameter

puts arr.inspect
len = (arr.length)-1

for i in 0..len      #loop from 0 to len
for j in (i+1)..len  #inner loop from i+1 to len

if arr[i] > arr[j]
puts "swapping #{arr[j]} and #{arr[i]}"
arr[j], arr[i] = arr[i], arr[j]  #swapping in case above condn is true

end
end
puts arr.inspect
end  #end of for loop

puts arr.inspect

end  #end of method bubble_sort




bubble_sort([1,5,9,0,-1,3,2])
