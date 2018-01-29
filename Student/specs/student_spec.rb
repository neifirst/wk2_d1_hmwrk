require('minitest/rg')
require('minitest/autorun')
require_relative('../student')

class TestStudent < MiniTest::Test

  def test_name
    student = Student.new("Ellie", 4)
    assert_equal("Ellie", student.name())
  end

  def test_cohort_num
    student = Student.new("Ellie", 4)
    assert_equal(4, student.cohort_num())
  end

  def test_set_name
    student = Student.new("Ellie", 4)
    student.name = ("Jean")
    assert_equal("Jean", student.name())
  end

  def test_set_cohort_num
    student = Student.new("Ellie", 4)
    student.cohort_num = (5)
    assert_equal(5, student.cohort_num())
  end

  def test_talk
    student = Student.new("Ellie", 4)
    assert_equal("I can talk!", student.talk())
  end

  def test_say_fave_language
    student = Student.new("Ellie", 4)
    assert_equal("I lurve Java.", student.say_fave_language("Java"))
  end

end
