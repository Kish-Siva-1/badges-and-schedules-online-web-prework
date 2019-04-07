def badge_maker(name)
    puts "Hello, my name is #{name}."
end

def batch_badge_creator(speaker_list)
    arr=[]
    i=0
    
    speaker_list.each do |greeting|
      arr[i]=badge_maker(greeting)
      i += 1
    end
    
    return arr
    
end

def assign_rooms(speaker_list)
  
  arr=[]
  i=0
  
  speaker_list.each_with_index |speaker, room_no|
    speaker_list[speaker] = room_no
    puts "Hello, #{speaker}!, You'll be assigned to room #{room_no}!"
    #arr[i] = room_no
    #i += 1
  end
  
  speaker_list

end

#https://stackoverflow.com/questions/3580049/whats-the-ruby-way-to-iterate-over-two-arrays-at-once

def printer 
  
  arr1 = batch_badge_creator.each
  arr2 = assign_rooms.each
  
  loop do 
    a1,a2 = arr1.next, arr2.next
    puts "#{a1} #{a2}"
  end 
  
end