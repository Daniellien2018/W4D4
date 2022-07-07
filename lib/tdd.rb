def my_unique(array)
    new_arr = []
    array.each do |ele|
        if !new_arr.include?(ele)
            new_arr << ele
        end
    end
    new_arr
end

def two_sum(arr)
    new_arr = []
    arr.each_with_index do |ele, i|
        arr.each_with_index do |ele2, j| 
            if ele + ele2 == 0 && j > i
                new_arr << [i, j]
            end
        end 
    end 
    new_arr
end 

def my_transpose(arr)
     arr.transpose
end

[2,6,1,2]    # [0,1]
def stockpicker(arr)
    hash = Hash.new {|hash, k| hash[k] =[]}
    arr.each_with_index do |ele, i|
        arr.each_with_index do |ele2, j|
            if i > j
                hash[ele-ele2] << [j, i]
            end
        end
    end 
hash.sort_by{|k,v| k}[-1][1].flatten
end





