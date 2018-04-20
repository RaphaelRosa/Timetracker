100.times do |task|
    Task.create!(title: "Task #{ task }", start: DateTime.now().advance({ minutes: task }))
end

puts '100 Tasks have been created'