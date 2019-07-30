# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendee_badges = []
  attendees.each do |name|
    attendee_badges << badge_maker(name)
  end
  attendee_badges
end

def assign_rooms(attendees)
  room_assignments = []
  attendees.each.with_index(1) do |name, index|
    room_assignments << "Hello, #{name}! You'll be assigned to room #{index}!"
  end
  room_assignments
end

def printer()
  batch_badge_creator()
  batch_badge_creator.each do |label|
    puts label.chomp
  end
  
  assign_rooms()
  assign_rooms.each do |room|
    puts room.chomp
  end
  
  printer()
end