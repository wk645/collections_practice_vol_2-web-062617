def begins_with_r(array)
    array.all? do |word|
        word.start_with?("r")
    end
end

def contain_a(array)
    array.select {|x| x.include?("a")}
end

def first_wa(array)
    array.find {|x| x.to_s.start_with?("wa")}
end

def remove_non_strings(array)
    array.delete_if {|x| !(x.is_a?(String))}
end

def count_elements(array)
    array.each_with_object(Hash.new(0)) {|g,h| h[g[:name]] += 1}.
    map {|name, count| { :name=>name, :count=>count }}
end

def merge_data(arr1, arr2)
    merged =[]
    arr1.each_index do |i|
        arr2[0].keys.each do |name|
            merged << arr1[i].merge(arr2[0][name]) if name == arr1[i][:first_name]
        end
    end
    
    merged
    
end

def find_cool(array)
    array.select {|i| i.has_value?("cool")}
end

def organize_schools(hash)
    results = {}
    hash.each do |school, info|
        info.each do |key, value|
            if results[value] == nil
            results[value] = [school]
            else
            results[value] << school
            end
        end
    end
    results
end













