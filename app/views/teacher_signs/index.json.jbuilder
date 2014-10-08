json.array!(@teacher_signs) do |teacher_sign|
  json.extract! teacher_sign, :id, :teacher_name, :course_name, :date
  json.url teacher_sign_url(teacher_sign, format: :json)
end
