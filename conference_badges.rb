def badge_maker(name)
    "Hello, my name is #{name}."
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
  
  speaker_list.each_with_index do |speaker, room_no|
    #speaker_list[speaker] = room_no
    room2 = room_no + 1
    puts "Hello, #{speaker}! You'll be assigned to room #{room2}!"
    arr[i] = "Hello, #{speaker}! You'll be assigned to room #{room2}!"
    i += 1
  end
  
  arr

end

#https://stackoverflow.com/questions/3580049/whats-the-ruby-way-to-iterate-over-two-arrays-at-once

def printer(speaker_list)
  
  arr1 = batch_badge_creator(speaker_list).each
  arr2 = assign_rooms(speaker_list).each
  
  loop do 
    a1,a2 = arr1.next, arr2.next
    puts "#{a1}"
  end 
  
end
