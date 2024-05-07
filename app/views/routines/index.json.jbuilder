
json.array! @routines do |routine|
  json.id routine.id
  json.user_id routine.user_id
  json.exercise_id routine.exercise_id
end
