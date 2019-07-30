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

def printer(attendees)
  batch_badge_creator(attendees).each { |label| puts label }
  assign_rooms(attendees).each { |room| puts room }
end