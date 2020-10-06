
def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort{|a,b| b<=>a}
end

def sort_array_char_count(array)
    array.sort{|a,b| a.length <=> b.length}
end

def swap_elements(array)
    array.insert(1,array[2])
    array.pop
    array
end

def reverse_array(array)
    array.reverse()
end

# def kesha_maker(array)
#     new_array = []
#     array.each do |i|
#        new_array << i.insert(2,"$")
#     end
#     new_array
# end




def kesha_maker(array)
    new_array = []
    array.each do |i|
        i.insert(2,"$")
       word_to_array=i.split("")
       word_to_array.delete_at(3)
       array_to_String=word_to_array.join("")
       new_array << array_to_String
    end
    return new_array
end

def find_a(array)
    array.select do |word|
        word.start_with?("a")
    end
end

def sum_array(array)
    num=0
    index=0
    while index < array.count()
        num = array[index] + num
        index +=1
    end
    num
end

def add_s(array) 
    all_s=[]
    array.collect do |i|
        all_s << i.insert(-1,"s")
end
x= all_s[1].split('')
x.delete_at(-1)
y=x.join
all_s[1] = y
all_s
end