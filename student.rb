class Student

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def get_student_name()
    return @name
  end

  def get_student_cohort()
    return @cohort
  end

  def set_student_name(name)
    @name = name
  end

  def student_talk()
    return "I can talk."
  end

  def students_favourite_language(favourite_language)
    return "My favourite language is #{favourite_language}"
  end
end