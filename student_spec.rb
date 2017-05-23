require( 'minitest/autorun')
require( 'minitest/rg')
require_relative( 'student')

class TestStudent < Minitest::Test

  def setup()
    @student1 = Student.new("James", 1)
    @student2 = Student.new("Tony", 2)
  end

  def test_student_name()
    assert_equal("James", @student1.get_student_name())
    assert_equal("Tony", @student2.get_student_name())
  end

  def test_student_cohort()
    assert_equal(1, @student1.get_student_cohort())
    assert_equal(2, @student2.get_student_cohort())
  end

  def test_set_student_name()
    @student1.set_student_name("Jambo")
    assert_equal("Jambo", @student1.get_student_name())

    @student2.set_student_name("Big T")
    assert_equal("Big T", @student2.get_student_name())
  end

  def test_can_student_talk()
    assert_equal("I can talk.", @student1.student_talk())
    assert_equal("I can talk.", @student2.student_talk())
  end

  def test_students_favourite_language()
    assert_equal("My favourite language is Ruby", @student1.students_favourite_language("Ruby"))
  end

end



