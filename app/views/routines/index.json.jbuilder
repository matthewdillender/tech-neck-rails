json.array! @routines do |routine|
  json.id routine.id
  json.user_id routine.user_id
  json.exercise_id routine.exercise_id

  json.exercise do
    json.name routine.exercise.name
    json.description routine.exercise.description
    json.start_image_url routine.exercise.start_image_url
    json.end_image_url routine.exercise.end_image_url
    
  end
end