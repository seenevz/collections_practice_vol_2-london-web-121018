def begins_with_r(array)
  array.all? {|i| i[0] == "r"}
end

def contain_a(array)
  array.find_all {|i| i if i.include? "a"}
end

def first_wa(array)
  array.find {|i| i if i.to_s.include? "wa"}
end

def remove_non_strings(array)
  array.find_all {|i| i.is_a?String}
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |compare_h|
      if compare_h[:name] == name
        hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)

end

def merge_data(keys, values)
  return_a = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        return_a << merged_person
      end
    end
  end
  return_a
end

def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
