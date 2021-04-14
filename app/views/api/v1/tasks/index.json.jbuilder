json.tasks do  
  json.array! @tasks do |task|
    json.extract! task, :id, :title, :deadline, :done
  end
end
