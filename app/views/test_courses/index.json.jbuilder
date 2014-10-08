json.array!(@test_courses) do |test_course|
  json.extract! test_course, :id, :student_name, :course_name
  json.url test_course_url(test_course, format: :json)
end
